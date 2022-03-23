---
title: 系統操作
nav_order: 5001
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 系統操作


* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/gen/i3wm-gen-rc/Section/Subject/System/Keybind/Base.conf)

| 按鍵組合           | 功能        | 執行指令               |
| ----------------- | ------------ | ---------------------- |
| `Alt + Ctrl + c`  | 重新套用設定 | `reload` (i3 builtin)  |
| `Alt + Shift + c` | 重新啟動i3   | `restart` (i3 builtin) |
| `Alt + Shift + x` | 登出         | `"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"` (i3 builtin) |
| `Alt + Shift + z` | 關機         | `systemctl poweroff`   |


