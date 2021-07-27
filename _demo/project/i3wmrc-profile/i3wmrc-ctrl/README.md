
# i3wmrc-ctrl

## Install

Run

``` sh
mkdir -p "$HOME/.local/bin"

wget 'https://raw.githubusercontent.com/samwhelp/note-about-i3wm/gh-pages/_demo/project/i3wmrc-profile/i3wmrc-ctrl/i3wmrc-ctrl' -O "$HOME/.local/bin/i3wmrc-ctrl"

chmod 755 "$HOME/.local/bin/i3wmrc-ctrl"
```

Or Run

``` sh
curl -fsSL 'https://raw.githubusercontent.com/samwhelp/note-about-i3wm/gh-pages/_demo/project/i3wmrc-profile/i3wmrc-ctrl/remote-install.sh' | bash
```

Or Run

``` sh
wget 'https://raw.githubusercontent.com/samwhelp/note-about-i3wm/gh-pages/_demo/project/i3wmrc-profile/i3wmrc-ctrl/remote-install.sh' -q -O - | bash
```


## Usage


### Help

``` sh
$ i3wmrc-ctrl
```

or

``` sh
$ i3wmrc-ctrl help
```


### Debug

``` sh
$ export DEBUG_I3WMRC_CTRL=true
```
