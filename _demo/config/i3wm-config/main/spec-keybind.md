
# I3WM / Keybind / User


## Subject

* [System Control](#system-control)
* [Launch Terminal](#launch-terminal)
* [Launch Rofi](#launch-rofi)
* [Launch App](#launch-app)
* [Wallpaper](#wallpaper)
* [Screenshot](#screenshot)
* [Volume Control](#volume-control)
* [Window Control](#window-control)


## System Control

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/System/Keybind/Base.conf)

| Keybind           | Action          | Command         |
| ----------------- | --------------- | --------------- |
| `Alt + Ctrl + c`  | Reload   | `reload` (i3 builtin)  |
| `Alt + Shift + c` | Restart  | `restart` (i3 builtin) |
| `Alt + Shift + x` | Logout   | `"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"` (i3 builtin) |
| `Alt + Shift + z` | Shutdown | `systemctl poweroff`   |


## Launch Terminal

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Application/Keybind/Terminal.conf)

| Keybind           | Action          | Command          |
| ----------------- | --------------- | ---------------  |
| `Alt + Enter`     | Launch Terminal | `sakura`         |
| `Alt + Shift + a` | Launch Terminal | `sakura`         |
| `Alt + Ctrl + a`  | Launch Terminal | `xfce4-terminal` |
| `Alt + Shift + t` | Launch Terminal | `xterm`          |
| `Alt + Ctrl + t`  | Launch Terminal | `urxvt`          |


## Launch Rofi

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Application/Keybind/Rofi.conf)

| Keybind           | Action      | Command                         |
| ----------------- | ----------- | ------------------------------- |
| `Alt + Shift + d` | Launch Rofi | `rofi -show drun -show-icons`   |
| `Alt + Shift + w` | Launch Rofi | `rofi -show window -show-icons` |
| `Alt + Shift + r` | Launch Rofi | `rofi -show run`                |


## Launch App

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Application/Keybind/Favorite.conf)

| Keybind           | Action              | Command      |
| ----------------- | ------------------- | ------------ |
| `Alt + Shift + f` | Launch File Manager | `pcmanfm-qt` |
| `Alt + Shift + g` | Launch File Manager | `thunar`     |
| `Alt + Shift + e` | Launch Text Editor  | `mousepad`   |
| `Alt + Shift + b` | Launch Web Browser  | `firefox`    |


## Wallpaper

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Wallpaper/Keybind/Base.conf)

| Keybind          | Action            | Command                                          |
| ---------------- | ----------------- | ------------------------------------------------ |
| `Alt + w`        | Wallpaper Shuf    | `feh --bg-fill --randomize ~/Pictures/Wallpaper` |
| `Alt + Ctrl + w` | Wallpaper Default | `feh --bg-fill ~/Pictures/Wallpaper/default.jpg` |


## Screenshot

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Screenshot/Keybind/Base.conf)

| Keybind       | Action                   | Command    |
| ------------- | ------------------------ | ---------- |
| `Print`       | Screenshot               | `scrot`    |
| `Alt + Print` | Screenshot Selected Area | `scrot -s` |


## Volume Control

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Volume/Keybind/Base.conf)

| Keybind           | Action                 | Command                                     |
| ----------------- | ---------------------- | ------------------------------------------- |
| `Alt + Shift + v` | Launch Volume Control  | `mate-volume-control`                       |
| `Alt + m`         | Volume Toggle Mute     | `amixer -q -D pulse sset Master toggle`     |
| `Alt + Shift + <` | Volume Decrease        | `amixer -q -D pulse sset Master 5%- unmute` |
| `Alt + Shift + >` | Volume Increase        | `amixer -q -D pulse sset Master 5%+ unmute` |
| `Alt + Ctrl + ,`  | Volume Decrease Slowly | `amixer -q -D pulse sset Master 1%- unmute` |
| `Alt + Ctrl + .`  | Volume Increase Slowly | `amixer -q -D pulse sset Master 1%+ unmute` |


| Keybind                | Action                 | Command                                     |
| ---------------------- | ---------------------- | ------------------------------------------- |
| `XF86AudioMute`        | Volume Toggle Mute     | `amixer -q -D pulse sset Master toggle`     |
| `XF86AudioLowerVolume` | Volume Decrease        | `amixer -q -D pulse sset Master 5%- unmute` |
| `XF86AudioRaiseVolume` | Volume Increase        | `amixer -q -D pulse sset Master 5%+ unmute` |


## Window Control


### Window Close

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Close.conf)

| Keybind           | Action       | Command             |
| ----------------- | ------------ | ------------------- |
| `Win + q`         | Close Window | `kill` (i3 builtin) |
| `Win + Shift + q` | Kill Window  | `kill` (i3 builtin) |


### Window Fullscreen

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/FullScreen.conf)

| Keybind   | Action            | Command             |
| --------- | ----------------- | ------------------- |
| `Win + f` | Window FullScreen | `fullscreen toggle` (i3 builtin) |


### Window FloatingToggle

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/FloatingToggle.conf)
* [reference](https://i3wm.org/docs/userguide.html#manipulating_layout)

| Keybind       | Action                          | Command                        |
| ------------- | ------------------------------- | ------------------------------ |
| `Win + grave` | Window toggle floating or tited | `floating toggle` (i3 builtin) |
| `Win + n`     | Window toggle floating or tited | `floating toggle` (i3 builtin) |

> grave means `


### Window Focus

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Focus.conf)
* [reference](https://i3wm.org/docs/userguide.html#_focusing_moving_containers)

| Keybind   | Action                | Command                   |
| --------- | --------------------  | -----------------------   |
| `Win + a` | Focus previous window | `focus prev` (i3 builtin) |
| `Win + s` | Focus next window     | `focus next` (i3 builtin) |

| Keybind   | Action                | Command                   |
| --------- | --------------------  | -----------------------   |
| `Win + [` | Focus previous window | `focus prev` (i3 builtin) |
| `Win + ]` | Focus next window     | `focus next` (i3 builtin) |
