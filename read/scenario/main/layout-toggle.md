---
title: 畫面佈局切換
nav_order: 5030
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 畫面佈局切換

畫面布局，有下面四個狀態

* tabbed
* stacking
* splitv
* splith

> 而「split」指的是「splitv」或「splith」。

## 左手單手操作

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/QuickSwitch.conf)


| 按鍵組合      | 功能                               | 執行指令                                  |
| ------------- | ---------------------------------- | ----------------------------------------- |
| `Win + Tab`   | 在所有的畫面布局狀態切換           | `layout toggle all` (i3 內建)             |
| `All + Tab`   | 在「splitv」和「splith」之間切換   | `layout toggle split` (i3 內建)           |
| `All + grave` | 在「tabbed」和「stacking」之間切換 | `layout toggle tabbed stacking` (i3 內建) |
| `Win + w`     | 在「tabbed」和「split」之間切換    | `layout toggle tabbed split` (i3 內建)    |


> 「split」指的是「splitv」或「splith」，所以在「tabbed」和「split」之間切換，「split」會根據當時最後是「splitv」或「splith」。


## 左右兩手操作

* [設定片段](config/i3/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/SwitchToSpecific.conf)

| 按鍵組合     | 功能                     | 執行指令                      |
| ------------ | ------------------------ | ----------------------------- |
| `Alt + k`    | 在所有的畫面布局狀態切換 | `layout toggle all` (i3 內建) |
| `Alt + j`    | 在所有的畫面布局狀態切換 | `layout toggle all` (i3 內建) |
| `Alt + Up`   | 在所有的畫面布局狀態切換 | `layout toggle all` (i3 內建) |
| `Alt + Down` | 在所有的畫面布局狀態切換 | `layout toggle all` (i3 內建) |


## 參考連結

* i3 User’s Guide / [6.3. Manipulating layout](https://i3wm.org/docs/userguide.html#manipulating_layout)
