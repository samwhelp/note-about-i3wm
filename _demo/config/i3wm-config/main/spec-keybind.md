
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
* [Layout Control](#layout-control)
* [Workspace Control](#workspace-control)



## System Control

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/System/Keybind/Base.conf)
* i3 User’s Guide / [6.20. Reloading/Restarting/Exiting](https://i3wm.org/docs/userguide.html#_reloading_restarting_exiting)
* i3 User’s Guide / [6.1. Executing applications (exec)](https://i3wm.org/docs/userguide.html#exec)

| Keybind           | Action          | Command         |
| ----------------- | --------------- | --------------- |
| `Alt + Ctrl + c`  | Reload   | `reload` (i3 builtin)  |
| `Alt + Shift + c` | Restart  | `restart` (i3 builtin) |
| `Alt + Shift + x` | Logout   | `"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"` (i3 builtin) |
| `Alt + Shift + z` | Shutdown | `systemctl poweroff`   |


## Launch Terminal

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Application/Keybind/Terminal.conf)
* i3 User’s Guide / [6.1. Executing applications (exec)](https://i3wm.org/docs/userguide.html#exec)

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
* Arch Wiki / [Feh](https://wiki.archlinux.org/title/Feh)

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


### Window Move

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Move.conf)
* [reference](https://i3wm.org/docs/userguide.html#_moving_containers)

| Keybind           | Action               | Command                         |
| ----------------- | -------------------- | ------------------------------- |
| `Win + Shift + k` | Window Move to Up    | `move up 20 px` (i3 builtin)    |
| `Win + Shift + j` | Window Move to Down  | `move down 20 px` (i3 builtin)  |
| `Win + Shift + h` | Window Move to Left  | `move left 20 px` (i3 builtin)  |
| `Win + Shift + l` | Window Move to Right | `move right 20 px` (i3 builtin) |


| Keybind               | Action               | Command                         |
| --------------------- | -------------------- | ------------------------------- |
| `Win + Shift + Up`    | Window Move to Up    | `move up 20 px` (i3 builtin)    |
| `Win + Shift + Down`  | Window Move to Down  | `move down 20 px` (i3 builtin)  |
| `Win + Shift + Left`  | Window Move to Left  | `move left 20 px` (i3 builtin)  |
| `Win + Shift + Right` | Window Move to Right | `move right 20 px` (i3 builtin) |


### Window Resize

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Resize.conf)
* [reference](https://i3wm.org/docs/userguide.html#resizingconfig)

| Keybind          | Action                                 | Command                                   |
| ---------------- | -------------------------------------- | ----------------------------------------- |
| `Win + Ctrl + k` | Move Window Bottom(South) Side to Up   | `resize shrink height 20 px` (i3 builtin) |
| `Win + Ctrl + j` | Move Window Bottom(South) Side to Down | `resize grow height 20 px` (i3 builtin)   |
| `Win + Ctrl + h` | Move Window Right(East) Side to Left   | `resize shrink width 20 px` (i3 builtin)  |
| `Win + Ctrl + l` | Move Window Right(East) to Right       | `resize grow width 20 px` (i3 builtin)    |


| Keybind              | Action                                 | Command                                   |
| -------------------- | -------------------------------------- | ----------------------------------------- |
| `Win + Ctrl + Up`    | Move Window Bottom(South) Side to Up   | `resize shrink height 20 px` (i3 builtin) |
| `Win + Ctrl + Down`  | Move Window Bottom(South) Side to Down | `resize grow height 20 px` (i3 builtin)   |
| `Win + Ctrl + Left`  | Move Window Right(East) Side to Left   | `resize shrink width 20 px` (i3 builtin)  |
| `Win + Ctrl + Right` | Move Window Right(East) Side to Right  | `resize grow width 20 px` (i3 builtin)    |


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


| Keybind   | Action             | Command                    |
| --------- | ------------------ | -------------------------- |
| `Win + k` | Focus up window    | `focus up` (i3 builtin)    |
| `Win + j` | Focus down window  | `focus down` (i3 builtin)  |
| `Win + h` | Focus left window  | `focus left` (i3 builtin)  |
| `Win + l` | Focus right window | `focus right` (i3 builtin) |


| Keybind       | Action             | Command                    |
| ------------- | ------------------ | -------------------------- |
| `Win + Up`    | Focus up window    | `focus up` (i3 builtin)    |
| `Win + Down`  | Focus down window  | `focus down` (i3 builtin)  |
| `Win + Left`  | Focus left window  | `focus left` (i3 builtin)  |
| `Win + Right` | Focus right window | `focus right` (i3 builtin) |


| Keybind   | Action                       | Command                     |
| --------- | ---------------------------- | --------------------------- |
| `Win + p` | Focus parent Container       | `focus parent` (i3 builtin) |
| `Win + c` | Focus child Container/Window | `focus child` (i3 builtin)  |


| Keybind   | Action                                         | Command                     |
| --------- | ---------------------------------------------- | --------------------------- |
| `Win + v` | Change focus between tiling or floating windows | `mode_toggle` (i3 builtin) |

### Window Split Orientation

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Split.conf)
* [reference](https://i3wm.org/docs/userguide.html#_splitting_containers)

| Keybind   | Action                                                  | Command                         |
| --------- | ------------------------------------------------------- | ------------------------------- |
| `Alt + u` | Set Layout Split Orientation To Down Side (Vertical)    | `split vertical` (i3 builtin)   |
| `Alt + o` | Set Layout Split Orientation To Right Side (Horizontal) | `split horizontal` (i3 builtin) |
| `Alt + i` | Set Layout Split Orientation Toggle                     | `split toggle` (i3 builtin)     |


## Layout Control

### Layout toggle

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/QuickSwitch.conf)
* [reference](https://i3wm.org/docs/userguide.html#manipulating_layout)


| Keybind       | Action                                   | Command                                      |
| ------------- | ---------------------------------------- | -------------------------------------------- |
| `Win + Tab`   | Layout toggle all                        | `layout toggle all` (i3 builtin)             |
| `All + Tab`   | Layout toggle between splitv or splith   | `layout toggle split` (i3 builtin)           |
| `All + grave` | Layout toggle between tabbed or stacking | `layout toggle tabbed stacking` (i3 builtin) |
| `Win + w`     | Layout toggle between tabbed or split    | `layout toggle tabbed split` (i3 builtin)    |

> grave means `

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/SwitchToSpecific.conf)

| Keybind      | Action            | Command                          |
| ------------ | ----------------- | -------------------------------- |
| `Alt + k`    | Layout toggle all | `layout toggle all` (i3 builtin) |
| `Alt + j`    | Layout toggle all | `layout toggle all` (i3 builtin) |
| `Alt + Up`   | Layout toggle all | `layout toggle all` (i3 builtin) |
| `Alt + Down` | Layout toggle all | `layout toggle all` (i3 builtin) |


## Workspace Control

### Workspace Switch

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Workspace/Keybind/SwitchToSpecific.conf)

| Workspace | Title |
| --------- | ----- |
| 1         | Term  |
| 2         | Edit  |
| 3         | Web   |
| 4         | File  |
| 5         | Misc  |

| Keybind   | Action                       | Command                           |
| --------- | ---------------------------- | --------------------------------- |
| `Alt + 1` | Switch to Workspace 1 (Term) | `workspace number 1` (i3 builtin) |
| `Alt + 2` | Switch to Workspace 2 (Edit) | `workspace number 2` (i3 builtin) |
| `Alt + 3` | Switch to Workspace 3 (Web)  | `workspace number 3` (i3 builtin) |
| `Alt + 4` | Switch to Workspace 4 (File) | `workspace number 4` (i3 builtin) |
| `Alt + 5` | Switch to Workspace 5 (Misc) | `workspace number 5` (i3 builtin) |


* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Layout/Keybind/QuickSwitch.conf)

| Keybind   | Action                       | Command                                 |
| --------- | ---------------------------- | --------------------------------------- |
| `Alt + z` | Switch to Prior Workspace    | `workspace back_and_forth` (i3 builtin) |

| Keybind   | Action                       | Command                       |
| --------- | ---------------------------- | ----------------------------- |
| `Alt + a` | Switch to Previous Workspace | `workspace prev` (i3 builtin) |
| `Alt + s` | Switch to Next Workspace     | `workspace next` (i3 builtin) |

| Keybind   | Action                       | Command                       |
| --------- | ---------------------------- | ----------------------------- |
| `Alt + h` | Switch to Previous Workspace | `workspace prev` (i3 builtin) |
| `Alt + l` | Switch to Next Workspace     | `workspace next` (i3 builtin) |

| Keybind       | Action                       | Command                       |
| ------------- | ---------------------------- | ----------------------------- |
| `Alt + Left`  | Switch to Previous Workspace | `workspace prev` (i3 builtin) |
| `Alt + Right` | Switch to Next Workspace     | `workspace next` (i3 builtin) |


## Window Move to Workspace

* [config snippet](config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/MoveToWorkspace.conf)


| Keybind   | Action                                       | Command                                             |
| --------- | -------------------------------------------- | --------------------------------------------------- |
| `Win + 1` | Window(Container) Move to Workspace 1 (Term) | `move container to workspace number 1` (i3 builtin) |
| `Win + 2` | Window(Container) Move to Workspace 2 (Edit) | `move container to workspace number 2` (i3 builtin) |
| `Win + 3` | Window(Container) Move to Workspace 3 (Web)  | `move container to workspace number 3` (i3 builtin) |
| `Win + 4` | Window(Container) Move to Workspace 4 (File) | `move container to workspace number 4` (i3 builtin) |
| `Win + 5` | Window(Container) Move to Workspace 5 (Misc) | `move container to workspace number 5` (i3 builtin) |
