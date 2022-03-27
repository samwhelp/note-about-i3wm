---
title: 視窗更改大小
nav_order: 5023
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 視窗更改大小

## 浮動視窗更改大小

* [config snippet](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Resize.conf)


| 按鍵組合         | 功能                                        | 執行指令                                  |
| ---------------- | ------------------------------------------- | ----------------------------------------- |
| `Win + Ctrl + k` | 移動視窗下(南)方邊界，往上方移動 (高度減少) | `resize shrink height 20 px` (i3 builtin) |
| `Win + Ctrl + j` | 移動視窗下(南)方邊界，往下方移動 (高度增加) | `resize grow height 20 px` (i3 builtin)   |
| `Win + Ctrl + h` | 移動視窗右(東)方邊界，往左方移動 (寬度減少) | `resize shrink width 20 px` (i3 builtin)  |
| `Win + Ctrl + l` | 移動視窗右(東)方邊界，往右方移動 (寬度增加) | `resize grow width 20 px` (i3 builtin)    |


| 按鍵組合             | 功能                                        | 執行指令                                  |
| -------------------- | ------------------------------------------- | ----------------------------------------- |
| `Win + Ctrl + Up`    | 移動視窗下(南)方邊界，往上方移動 (高度減少) | `resize shrink height 20 px` (i3 builtin) |
| `Win + Ctrl + Down`  | 移動視窗下(南)方邊界，往下方移動 (高度增加) | `resize grow height 20 px` (i3 builtin)   |
| `Win + Ctrl + Left`  | 移動視窗右(東)方邊界，往左方移動 (寬度減少) | `resize shrink width 20 px` (i3 builtin)  |
| `Win + Ctrl + Right` | 移動視窗右(東)方邊界，往右方移動 (寬度增加) | `resize grow width 20 px` (i3 builtin)    |


> 也可以使用「`Win + 滑鼠右鍵按住不放`」，移動滑鼠來更改視窗大小。


## 平鋪視窗更改大小

一樣可以用上面的按鍵，來操作平鋪視窗更改大小

概念上一樣是操作「視窗下方邊界」，「視窗右方邊界」。

也可以使用「`Win + 滑鼠右鍵按住不放`」移動滑鼠來操作。

## 參考連結

* i3 User’s Guide / [6.12. Resizing containers/windows](https://i3wm.org/docs/userguide.html#resizingconfig)
