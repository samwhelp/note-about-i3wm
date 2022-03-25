---
title: 工作空間切換
nav_order: 5040
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 工作空間切換


## 我個人定義的個工作空間

| 工作空間 | 名稱  |
| -------- | ----- |
| 1        | Term  |
| 2        | Edit  |
| 3        | Web   |
| 4        | File  |
| 5        | Misc  |


## 指定切換

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Application/Workspace/SwitchToSpecific.conf)

| 按鍵組合  | 功能                    | 執行指令                       |
| --------- | ----------------------- | ------------------------------ |
| `Alt + 1` | 切換到工作空間 1 (Term) | `workspace number 1` (i3 內建) |
| `Alt + 2` | 切換到工作空間 2 (Edit) | `workspace number 2` (i3 內建) |
| `Alt + 3` | 切換到工作空間 3 (Web)  | `workspace number 3` (i3 內建) |
| `Alt + 4` | 切換到工作空間 4 (File) | `workspace number 4` (i3 內建) |
| `Alt + 5` | 切換到工作空間 5 (Misc) | `workspace number 5` (i3 內建) |

> 若有設定「[workspace_auto_back_and_forth yes](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Workspace/Attribute/Base.conf#L37)」，下面的循環切換會失效。

## 循環切換

* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/share/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/QuickSwitch.conf)

| 按鍵組合  | 功能                                   | 執行指令                       |
| --------- | -------------------------------------- | ------------------------------ |
| `Alt + z` | 在目前和先前的工作空間來回切換(反覆按) | `workspace back_and_forth` (i3 內建) |

| 按鍵組合  | 功能                 | 執行指令                   |
| --------- | -------------------- | -------------------------- |
| `Alt + a` | 切換到上一個工作空間 | `workspace prev` (i3 內建) |
| `Alt + s` | 切換到下一個工作空間 | `workspace next` (i3 內建) |

| 按鍵組合  | 功能                 | 執行指令                   |
| --------- | -------------------- | -------------------------- |
| `Alt + h` | 切換到上一個工作空間 | `workspace prev` (i3 內建) |
| `Alt + l` | 切換到下一個工作空間 | `workspace next` (i3 內建) |

| 按鍵組合      | 功能                 | 執行指令                   |
| ------------- | -------------------- | -------------------------- |
| `Alt + Left`  | 切換到上一個工作空間 | `workspace prev` (i3 內建) |
| `Alt + Right` | 切換到下一個工作空間 | `workspace next` (i3 內建) |

## 參考連結

* i3 User’s Guide / [6.8. Changing (named) workspaces/moving to workspaces](https://i3wm.org/docs/userguide.html#_changing_named_workspaces_moving_to_workspaces)
