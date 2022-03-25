---
title: 視窗分割操作
nav_order: 5024
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 視窗分割操作

* [視窗分割導向](#視窗分割導向)

## 視窗分割導向

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Split.conf)

| 按鍵組合  | 功能                                           | 執行指令                     |
| --------- | ---------------------------------------------- | ---------------------------- |
| `Alt + u` | 設定視窗分割導向為下方 (Vertical)              | `split vertical` (i3 內建)   |
| `Alt + o` | 設定視窗分割導向為右方 (Horizontal)            | `split horizontal` (i3 內建) |
| `Alt + i` | 設定視窗分割導向，在「下方」和「右方」之間切換 | `split toggle` (i3 內建)     |

設定視窗分割導向，有兩個方向可以設定，「下方」和「右方」，

* 當設定為「下方」，當產生新的視窗時，視窗就會在「下方」產生。
* 當設定為「下方」，當產生新的視窗時，視窗就會在「右方」產生。

## 參考連結

* i3 User’s Guide / [6.2. Splitting containers](https://i3wm.org/docs/userguide.html#_splitting_containers)
