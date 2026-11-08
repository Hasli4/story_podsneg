[_tb_system_call storage=system/_scene1.ks]

[cm  ]
*начало

[playbgm  volume="200"  time="1000"  loop="true"  storage="Factory_Morning_Start_Up.mp3"  ]
[bg  storage="начало.png"  time="1000"  ]
[tb_show_message_window  ]
[font  size="28"  color="0xffffff"  face="Arial"  italic="true"  bold="undefined"  ]
[tb_start_text mode=1 ]
``Лёгкий утренний свет пробивается сквозь окна, заливая комнату мягким сиянием. [p]
В воздухе царит спокойствие, нарушаемое лишь шорохом спальников и приглушённым[r]смехом где-то в углу. [p]
Спящий боец начинает просыпаться, ещё не до конца осознавая, что новый день уже[r]начался и день этот будет довольно насыщенным...[p]
[_tb_end_text]

[resetfont  ]
[font  size="28"  color="0xffffff"  face="Georgia"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="7th_Life_-_Adam_MacDougall.mp3"  ]
[tb_start_text mode=1 ]
Где я?.. Почему так много шума?.. Который час?..[p]
[_tb_end_text]

[chara_show  name="Николай"  time="1000"  wait="true"  storage="chara/9/черный.png"  width="463"  height="614"  left="133"  top="171"  reflect="false"  ]
[chara_show  name="Степан"  time="1000"  wait="false"  storage="chara/1/черный.png"  width="315"  height="497"  left="-10"  top="240"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="???"][p]
Сегодня насыщенный день и у нас не будет свободного времени на посторонние дела. [p]
В обязательном порядке нужно отправить группу на репетицию концерта и звукаря [r]для проверки оборудования[p]

[_tb_end_text]

[chara_show  name="Макс"  time="1500"  wait="true"  storage="chara/3/черный.png"  width="336"  height="550"  left="953"  top="202"  reflect="false"  ]
[chara_move  name="Макс"  anim="true"  time="1000"  effect="linear"  wait="true"  left="485"  top="202"  width="336"  height="550"  ]
[tb_start_text mode=1 ]
[chara_ptext name="??"][p]
Снег опять выпал. Нужно будет предложить его убрать. И для медиков, наверняка, [r] найдётся работа.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name="???"][p]
Давайте сделаем так...[p]

[_tb_end_text]

[playbgm  volume="50"  time="1000"  loop="true"  storage="peremena1.mp3"  fadein="true"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="Ирина"  time="1000"  wait="true"  storage="chara/2/здарова.png"  width="491"  height="652"  left="11"  top="130"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Ирина"][p]
О, новичок, ты только что проснулся? Доброе утро! Хорошо, что именно я тебя заметила. [p]
У тебя две минуты на сборы. Правило "ноль-ноль" никогда не нарушают... Но на первый [r] раз сделаю исключение. Жду тебя у выхода![p]
[_tb_end_text]

[chara_hide  name="Ирина"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
[chara_ptext name=""][p]
- А-а-ага... Да... Я быстро![p]

[_tb_end_text]

[font  size="28"  color="0xffffff"  face="Arial"  italic="true"  ]
[tb_start_text mode=1 ]
``Таинственная атмосфера этого места, наполненная заботами и [r] ежедневными обязанностями, постепенно раскрывается перед новичком. [p]
Каждый новый день начинается здесь не просто с пробуждения, а с принятия вызовов и [r] выполнения важных задач, пронизанных командным духом, поддержкой друзей и [r]ощущением чего-то почти волшебного, скрытого в повседневной жизни отряда.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Knife_Cuting_Food_On_Plate.mp3"  ]
[bg  time="1000"  method="fadeIn"  storage="столовая_светится_темнее.png"  ]
[playbgm  volume="35"  time="1000"  loop="true"  storage="peremena1.mp3"  fadein="true"  ]
[resetfont  ]
[font  size="28"  color="0xffffff"  face="Georgia"  ]
[chara_show  name="Ирина"  time="1000"  wait="true"  storage="chara/2/светится.png"  width="450"  height="700"  left="82"  top="46"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Ирина"][p]
Идём, там как раз есть свободные места. Не бойся, никто не кусается и еду не отбирает. [p]
А я даже могу тебе отдать часть своего завтрака...[p]
Я почти никогда не ем по утрам, но начать его с друзьями - лучше чем хороший сон и тем более кошмар.[p]

[_tb_end_text]

[chara_mod  name="Ирина"  time="600"  cross="true"  storage="chara/2/темная_светится.png"  ]
[tb_start_text mode=1 ]
[chara_ptext name=""][p]
Кажется, она светится... и другие тоже. Наверное, я не проснулся...[p]
[_tb_end_text]

[chara_mod  name="Ирина"  time="600"  cross="true"  storage="chara/2/светится.png"  ]
[chara_show  name="Даниил"  time="1000"  wait="true"  storage="chara/5/задумался_светится.png"  width="687"  height="909"  left="692"  top="50"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Даниил"][p]
О, Ирина, ты уже поймала нашего новичка за что-то?[p]

[_tb_end_text]

[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
[chara_hide  name="Ирина"  time="100"  wait="true"  pos_mode="true"  ]
[chara_show  name="Ирина"  time="10"  wait="true"  storage="chara/2/ня.png"  width="514"  height="681"  left="1"  top="32"  reflect="false"  ]
[bg  time="10"  method="crossfade"  storage="столовая_темнее.png"  ]
[chara_hide  name="Даниил"  time="10"  wait="true"  pos_mode="true"  ]
[chara_show  name="Даниил"  time="100"  wait="true"  storage="chara/5/задумался.png"  width="589"  height="781"  left="718"  top="65"  reflect="false"  ]
[chara_move  name="Ирина"  anim="false"  time="10"  effect="linear"  wait="true"  left="34"  top="67"  width="514"  height="681"  ]
[mask_off  time="100"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Ирина"][p]
Нет, он, видимо, из-за раннего пробуждения забыл, где находится столовая. [p]
Вот я и предложила дойти вместе.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name="Даниил"][p]
Как прошла первая ночь на полу в спортзале?[p]
[_tb_end_text]

[mask  time="5"  effect="zoomIn"  color="0x000000"  ]
[chara_hide  name="Ирина"  time="5"  wait="true"  pos_mode="true"  ]
[chara_show  name="Ирина"  time="5"  wait="false"  storage="chara/2/черная.png"  width="379"  height="795"  left="41"  top="82"  reflect="false"  ]
[chara_hide  name="Даниил"  time="5"  wait="true"  pos_mode="true"  ]
[chara_show  name="Даниил"  time="5"  wait="false"  storage="chara/5/черный.png"  width="534"  height="709"  left="783"  top="88"  reflect="false"  ]
[chara_move  name="Даниил"  anim="false"  time="5"  effect="linear"  wait="true"  left="784"  top="102"  width="534"  height="709"  ]
[chara_move  name="Ирина"  anim="false"  time="5"  effect="linear"  wait="true"  left="67"  top="94"  width="379"  height="795"  ]
[tb_hide_message_window  ]
[mask_off  time="5"  effect="fadeOut"  ]
[glink  color="btn_18_green"  storage="scene1.ks"  size="23"  target="*Лучший_сон"  text="Это&nbsp;был&nbsp;лучший&nbsp;сон&nbsp;в&nbsp;моей&nbsp;жизни..&nbsp;"  x="225"  y="252"  width="413"  height="51"  _clickable_img=""  ]
[glink  color="btn_18_green"  storage="scene1.ks"  size="20"  target="*Средне"  text="Не&nbsp;каждый&nbsp;день&nbsp;удаётся&nbsp;так&nbsp;выспаться."  x="640"  y="251"  width=""  height=""  _clickable_img=""  ]
[glink  color="btn_18_green"  storage="scene1.ks"  size="20"  text="Было&nbsp;ужасно,&nbsp;холодно&nbsp;и&nbsp;неудобно&nbsp;спать&nbsp;на&nbsp;деревянном&nbsp;полу.<br>&nbsp;Я&nbsp;слышал&nbsp;храп&nbsp;и&nbsp;сопение&nbsp;соседа.<br>&nbsp;Я&nbsp;не&nbsp;помню&nbsp;его&nbsp;имени,&nbsp;но&nbsp;так&nbsp;хочется&nbsp;высказать&nbsp;всё."  x="322"  y="309"  width="619"  height="90"  _clickable_img=""  target="*Не_очень"  ]
[s  ]
*Лучший_сон

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[chara_ptext name="Даниил"][p]
Отлично, отпимистичный настрой это главное![p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*Идем_дальше"  ]
*Средне

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[chara_ptext name="Даниил"][p]
Сильно не привыкай ;)[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*Идем_дальше"  ]
*Не_очень

[tb_show_message_window  ]
[tb_start_text mode=1 ]
[chara_ptext name="Даниил"][p]
К такой жизни нужно привыкнуть, но радует, что ты можешь говорить об происходящем. [p]
[_tb_end_text]

*Идем_дальше

[tb_start_text mode=1 ]
[chara_ptext name="Ирина"][p]
Здесь много плюсов. Вот, к примеру, известия от нашего командира и комиссара.[p]

[_tb_end_text]

[chara_hide  name="Ирина"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_hide  name="Даниил"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Степан"][p]
[_tb_end_text]

[chara_show  name="Степан"  time="1000"  wait="true"  storage="chara/1/серьезный_светится.png"  width="349"  height="561"  left="88"  top="181"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Николай"][p]
[_tb_end_text]

[chara_show  name="Николай"  time="1000"  wait="true"  storage="chara/9/светится.png"  width="374"  height="597"  left="322"  top="151"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Николай"][p]
У нас много дел на сегодня, и самое главное — чтобы вы не терялись. [p]
После завтрака мы встречаемся в коридоре школы на общую линейку. Далее разделяемся. [p]
Слушайте ваших товарищей и сразу спрашивайте, если что-то не ясно. [p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name=" "][p]
Их свет отличается... Почему? Я с ними виделся не один раз, но заметил это только сейчас.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name="Степан"][p]
Сегодня пять важных событий, и некоторые будут идти параллельно.[p]
После линейки всем новеньким нужно будет выбрать: пойти на мастер-класс или оказать населению шефскую помощь. [p]
Даня и Ирина всё вам расскажут.[p]
[_tb_end_text]

[chara_show  name="Женя"  time="1000"  wait="true"  storage="chara/8/довольный_вдаль_смотрит.png"  width="529"  height="701"  left="180"  top="100"  reflect="false"  ]
[chara_hide  name="Степан"  time="1000"  wait="false"  pos_mode="true"  ]
[chara_hide  name="Николай"  time="1000"  wait="false"  pos_mode="true"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Женя"][p]
А сейчас всем приятного аппетита![p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name=" "][p]
- Значит, сразу после мы делаем выбор, но... мероприятий пять, а рассказали только про [r]два...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
[chara_ptext name="Женя"][p]
Вот молодец, держи пять за сообразительность![p]
[_tb_end_text]

[chara_hide  name="Женя"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Игорь"][p]
[_tb_end_text]

[chara_show  name="Игорь"  time="1000"  wait="true"  storage="chara/undefined/светится.png"  width="391"  height="735"  left="864"  top="17"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Игорь"][p]
Это был тест на внимательность, а теперь проверим память.[p]
[_tb_end_text]

*Повтор_для_дебилов

[tb_start_text mode=1 ]
[chara_ptext name="Игорь"][p]
После обеда все идут в спортивный зал. [p]
Потом мы снова проводим мастер-классы и оказываем помощь населению одновременно. [p]
Этого времени достаточно, чтобы подготовить зал к мероприятию для населения,[r] а вечером мы все встретимся на концерте.[p]
[_tb_end_text]

[chara_show  name="Женя"  time="1000"  wait="true"  storage="chara/8/сваетится.png"  width="405"  height="690"  left="96"  top="98"  reflect="false"  ]
[tb_start_text mode=1 ]
[chara_ptext name="Женя"][p]
Всё запомнил?[p]
[_tb_end_text]

[glink  color="btn_18_green"  storage="scene1.ks"  size="20"  target="*умный_чел,_позитивный"  text="Да,&nbsp;всё&nbsp;очень&nbsp;просто&nbsp;и&nbsp;понятно."  x="270"  y="202"  width="424"  height="66"  _clickable_img=""  ]
[glink  color="btn_18_green"  storage="scene1.ks"  size="20"  target="*умный_чел,_позитивный"  text="*сделать&nbsp;уверенное&nbsp;лицо*&nbsp;&nbsp;Не&nbsp;уверен,&nbsp;что&nbsp;всё,&nbsp;но..&nbsp;"  x="357"  y="276"  width="586"  height="57"  _clickable_img=""  ]
[glink  color="btn_18_green"  storage="scene1.ks"  size="20"  target="*Повтор_для_дебилов"  text="Нет,&nbsp;можно&nbsp;повторить?"  x="712"  y="204"  width="321"  height="66"  _clickable_img=""  ]
[s  ]
*умный_чел,_позитивный

[jump  storage="scene1.ks"  target="*умный_чел_негативный"  ]
*умный_чел_негативный

[tb_start_text mode=1 ]
[chara_ptext name="Женя"] [p]
Ешь, а то еда исчезнет неожиданно..  [p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="lineyka.ks"  target=""  ]
