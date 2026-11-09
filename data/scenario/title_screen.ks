[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[bg  storage="главный_экранъ.png"  time="1"  ]
*title

[button  storage="title_screen.ks"  target="*start"  graphic="в_путешествие.png"  width="623"  height="95"  x="74"  y="268"  _clickable_img=""  name="img_6"  ]
[button  storage="title_screen.ks"  target="*load"  graphic="вспомнить_момент.png"  width="589"  height="90"  x="39"  y="395"  _clickable_img=""  name="img_7"  ]
[button  storage="title_screen.ks"  target="*title"  graphic="вернуться.png"  width="597"  height="90"  x="116"  y="518"  _clickable_img=""  ]
[iscript]
window.dispatchEvent(new Event("podsneg-title-ready"));
[endscript]
[s  ]
*start

[stop_bgmovie  time="1000"  ]
[stopbgm  time="1000"  ]
[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target="*начало"  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
