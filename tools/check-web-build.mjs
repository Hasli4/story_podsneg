import { existsSync, readdirSync, readFileSync } from "node:fs";
import { resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(fileURLToPath(new URL("..", import.meta.url)));
const gameDirectory = "Podsneg_HTML";
const required = [
    ".nojekyll",
    "index.html",
    `${gameDirectory}/index.html`,
    `${gameDirectory}/data/scenario/first.ks`,
    `${gameDirectory}/data/scenario/title_screen.ks`,
    `${gameDirectory}/data/scenario/system/_scene1.ks`,
    `${gameDirectory}/data/video/главный_экранъ.mp4`,
    `${gameDirectory}/tyrano/tyrano.js`,
];
const missing = required.filter((file) => !existsSync(resolve(root, file)));

function collectScenarioFiles(directory) {
    return readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
        const filename = resolve(directory, entry.name);
        return entry.isDirectory() ? collectScenarioFiles(filename) : entry.name.endsWith(".ks") ? [filename] : [];
    });
}

function attributes(tag) {
    return Object.fromEntries([...tag.matchAll(/([\w_]+)=(?:"([^"]*)"|([^\s\]]+))/g)].map(([, key, quoted, plain]) => [key, quoted ?? plain]));
}

function checkAsset(filename, source) {
    if (!existsSync(resolve(root, filename))) missing.push(`${filename} (referenced by ${source})`);
}

const scenarioRoot = resolve(root, gameDirectory, "data/scenario");
const scenarioFiles = collectScenarioFiles(scenarioRoot);
let referencesChecked = 0;

for (const scenarioFile of scenarioFiles) {
    const displayName = scenarioFile.replace(root + "\\", "");
    const script = readFileSync(scenarioFile, "utf8");
    for (const match of script.matchAll(/\[([^\]]+)\]/g)) {
        const [tagName] = match[1].trim().split(/\s+/, 1);
        const attr = attributes(match[1]);
        const storage = attr.storage;
        const staticStorage = storage && !/[&%]/.test(storage);

        if (["call", "jump"].includes(tagName) && staticStorage && storage.endsWith(".ks")) {
            checkAsset(`${gameDirectory}/data/scenario/${storage}`, displayName);
            referencesChecked += 1;
        } else if (["bg", "bgmovie"].includes(tagName) && staticStorage) {
            checkAsset(`${gameDirectory}/data/${tagName === "bg" ? "bgimage" : "video"}/${storage}`, displayName);
            referencesChecked += 1;
        } else if (["playbgm", "stopbgm"].includes(tagName) && staticStorage) {
            checkAsset(`${gameDirectory}/data/bgm/${storage}`, displayName);
            referencesChecked += 1;
        } else if (["playse", "stopse"].includes(tagName) && staticStorage) {
            checkAsset(`${gameDirectory}/data/sound/${storage}`, displayName);
            referencesChecked += 1;
        } else if (["chara_show", "chara_mod"].includes(tagName) && staticStorage) {
            checkAsset(`${gameDirectory}/data/fgimage/${storage}`, displayName);
            referencesChecked += 1;
        } else if (tagName === "tb_image_show" && staticStorage) {
            checkAsset(`${gameDirectory}/data/fgimage/${storage}`, displayName);
            referencesChecked += 1;
        } else if (tagName === "preload" && staticStorage && storage.startsWith("./data/")) {
            checkAsset(`${gameDirectory}/${storage.slice(2)}`, displayName);
            referencesChecked += 1;
        } else if (tagName === "button" && attr.graphic && !/[&%]/.test(attr.graphic)) {
            const folder = attr.folder || "image";
            checkAsset(`${gameDirectory}/data/${folder}/${attr.graphic}`, displayName);
            referencesChecked += 1;
        }
    }
}

const rootPage = readFileSync(resolve(root, "index.html"), "utf8");
const novelPage = readFileSync(resolve(root, gameDirectory, "index.html"), "utf8");
const config = readFileSync(resolve(root, gameDirectory, "data/system/Config.tjs"), "utf8");

for (const [, attribute, resource] of novelPage.matchAll(/\b(src|href)=["']([^"']+)["']/g)) {
    if (/^(?:https?:|data:|#)/.test(resource) || resource.includes("{{")) continue;
    const filename = resource.replace(/^\.\//, "");
    if (!existsSync(resolve(root, gameDirectory, filename))) {
        missing.push(`${gameDirectory}/${filename} (referenced by index.html ${attribute})`);
    }
}

if (!rootPage.includes(`src="./${gameDirectory}/"`)) missing.push(`index.html game frame for ${gameDirectory}/`);
if (!rootPage.includes("https://hasli4.github.io/story_podsneg/")) missing.push("canonical GitHub Pages URL metadata");
if (!novelPage.includes("try{") || !novelPage.includes("require('./tyrano/libs/jquery-3.6.0.min.js')")) {
    missing.push("standard Tyrano browser entry point");
}
if (!config.includes("projectID=Podsneg")) missing.push("Tyrano project configuration");

if (missing.length) {
    console.error(`Web build check failed:\n- ${missing.join("\n- ")}`);
    process.exitCode = 1;
} else {
    console.log(`Web build check passed: the static novel entry point, Tyrano resources, and ${referencesChecked} scenario references are present.`);
}
