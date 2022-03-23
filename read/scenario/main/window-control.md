---
title: 視窗操作
nav_order: 5020
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 視窗操作

* [關閉視窗](#關閉視窗)
* [視窗全螢幕](#視窗全螢幕)


## 關閉視窗

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Close.conf)

| 按鍵組合          | 功能     | 執行指令         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `kill` (i3 內建) |
| `Win + Shift + q` | 關閉視窗 | `kill` (i3 內建) |


## 視窗全螢幕

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/FullScreen.conf)

| 按鍵組合  | 功能       | 執行指令                      |
| --------- | ---------- | ----------------------------- |
| `Win + f` | 視窗全螢幕 | `fullscreen toggle` (i3 內建) |


### 單一視窗浮動或平鋪

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/FloatingToggle.conf)
* [reference](https://i3wm.org/docs/userguide.html#manipulating_layout)

| 按鍵組合      | 功能                                         | 執行指令                    |
| ------------- | -------------------------------------------- | --------------------------- |
| `Win + grave` | 單一視窗，切換成「浮動模式」或是「平鋪模式」 | `floating toggle` (i3 內建) |
| `Win + n`     | 單一視窗，切換成「浮動模式」或是「平鋪模式」 | `floating toggle` (i3 內建) |

> 關於「grave」 指的是 「`」這個「按鍵」。
