import { createReadStream, existsSync, statSync } from "node:fs";
import { createServer } from "node:http";
import { extname, join, normalize, resolve, sep } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(fileURLToPath(new URL("..", import.meta.url)));
const port = Number(process.env.PORT || 8080);
const types = {
    ".css": "text/css; charset=utf-8",
    ".gif": "image/gif",
    ".html": "text/html; charset=utf-8",
    ".ico": "image/x-icon",
    ".jpg": "image/jpeg",
    ".jpeg": "image/jpeg",
    ".js": "text/javascript; charset=utf-8",
    ".json": "application/json; charset=utf-8",
    ".ks": "text/plain; charset=utf-8",
    ".m4a": "audio/mp4",
    ".mp3": "audio/mpeg",
    ".mp4": "video/mp4",
    ".ogg": "audio/ogg",
    ".png": "image/png",
    ".svg": "image/svg+xml",
    ".webp": "image/webp",
    ".webm": "video/webm",
};

function resolveRequest(urlPath) {
    const pathname = decodeURIComponent(urlPath.split("?")[0]);
    const relativePath = pathname === "/" ? "index.html" : pathname.replace(/^[/\\]+/, "");
    const filename = normalize(join(root, relativePath));
    return filename === root || filename.startsWith(root + sep) ? filename : null;
}

createServer((request, response) => {
    const filename = resolveRequest(request.url || "/");
    if (!filename || !existsSync(filename)) {
        response.writeHead(404, { "Content-Type": "text/plain; charset=utf-8" });
        response.end("Not found");
        return;
    }

    const file = statSync(filename).isDirectory() ? join(filename, "index.html") : filename;
    if (!existsSync(file)) {
        response.writeHead(404, { "Content-Type": "text/plain; charset=utf-8" });
        response.end("Not found");
        return;
    }

    response.writeHead(200, {
        "Content-Type": types[extname(file).toLowerCase()] || "application/octet-stream",
        "Cache-Control": "no-store",
    });
    createReadStream(file).pipe(response);
}).listen(port, "127.0.0.1", () => {
    console.log(`Novel preview: http://127.0.0.1:${port}`);
});
