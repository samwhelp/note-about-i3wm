
# I3WM / Config / User


## Subject

* [Spec](#spec)
* [User Config File Path](#user-config-file-path)
* [User Config Dir Path](#user-config-dir-path)
* [Test Command](#test-command)


## Spec

* [Keybind](spec-keybind.md)


## User Config File Path

* [~/.config/i3/config](./config/i3/config)


## User Config Dir Path

* [~/.config/i3](./config/i3)

run

``` sh
tree --dirsfirst ~/.config/i3
```

show

```
/home/user/.config/i3
├── autostart
└── config

0 directories, 2 files
```

## Test Command

``` sh
xmodmap -pk
```

``` sh
xev -event keyboard
```

## Links

* [i3-gaps](https://github.com/Airblader/i3)
* [i3wm](https://i3wm.org/)
