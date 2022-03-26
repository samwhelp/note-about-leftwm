
# Leftwm / Keybind


## Subject

* [System](#system)
* [Launch App](#launch-app)
* [Workspace](#workspace)
* [Tag](#tag)
* [Window](#window)
* [Layout](#layout)
* [Wallpaper](#wallpaper)
* [Screenshot](#screenshot)
* [Volume](#volume)



## Keys

### Mean

| Key | Description |
| --- | --- |
| `Alt` | 'Mod1' (Meta) |
| `Win` | 'Mod4' (Super) |
| `Shift` | 'Shift' |
| `Ctrl` | 'Control' |


> Using 'Alt' maybe collision occurs on bash emacs mode.
>
> Please read:
> * $ man [bash](http://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readline) ## Search [^READLINE]
> * $ man 3 [readline](http://manpages.ubuntu.com/manpages/bionic/en/man3/readline.3readline.html) ## Search [Emacs Mode] or [Emacs Meta bindings]


### Tips

| Key | Description |
| --- | --- |
| `Alt` | For Tag (Workspace) (Desktop) |
| `Win` | For Window (Client) |
| `Shift` | For Window Move or Swap |
| `Ctrl` | For Window Resize |


## System

| Keyind | Action |
| --- | --- |
| `Alt + Shift + c` | Reconfigure |
| `Alt + Shift + x` | Logout |
| `Alt + Shift + z` | Shutdown |


## Launch App

### Launch Terminal

| Keybind           | Action          | Command                      |
| ----------------- | --------------- | ---------------------------- |
| `Alt + Enter`     | Launch Terminal | `sakura`                     |
| `Alt + Shift + a` | Launch Terminal | `sakura`                     |
| `Alt + Ctrl + a`  | Launch Terminal | `xfce4-terminal`             |
| `Alt + Shift + t` | Launch Terminal | `xterm`                      |
| `Alt + Ctrl + t`  | Launch Terminal | `urxvt`                      |


| Keybind           | Action                     | Command                      |
| ----------------- | -------------------------- | ---------------------------- |
| `Alt + Shift + o` | Toggle Scratchpad Terminal | `xfce4-terminal`             |

### Launch Rofi

| Keybind           | Action      | Command                         |
| ----------------- | ----------- | ------------------------------- |
| `Alt + Shift + d` | Launch Rofi | `rofi -show drun -show-icons`   |
| `Alt + Shift + w` | Launch Rofi | `rofi -show window -show-icons` |
| `Alt + Shift + r` | Launch Rofi | `rofi -show run`                |

### Launch Misc

| Keybind           | Action              | Command      |
| ----------------- | ------------------- | ------------ |
| `Alt + Shift + f` | Launch File Manager | `pcmanfm-qt` |
| `Alt + Shift + g` | Launch File Manager | `thunar`     |
| `Alt + Shift + e` | Launch Text Editor  | `mousepad`   |
| `Alt + Shift + b` | Launch Web Browser  | `firefox`    |

### Launch Dmenu

| Keybind           | Action              | Command      |
| ----------------- | ------------------- | ------------ |
| `Alt + Shift + i` |  Launch Dmenu       | `dmenu_run`  |


## Workspace

| Key | Description |
| --- | --- |
| `Alt + Ctrl + Left` | Focus Previous Workspace |
| `Alt + Ctrl + Right` | Focus Next Workspace |


## Tag

| Tag | Title |
| --- | --- |
| 1 | Term |
| 2 | Edit |
| 3 | Web |
| 4 | File |
| 5 | Misc |


| Key | Description |
| --- | --- |
| `Alt + [1-5]` | Switch to Specific Tag |
| `Win + [1-5]` | Move Focused Window to Specific Tag |


| Key | Description |
| --- | --- |
| `Alt + z` | Switch to Perior Tag |

| Key | Description |
| --- | --- |
| `Alt + a` | Switch to Previous Tag |
| `Alt + s` | Switch to Next Tag |

| Key | Description |
| --- | --- |
| `Alt + h` | Switch to Previous Tag |
| `Alt + l` | Switch to Next Tag |

| Key | Description |
| --- | --- |
| `Alt + Left` | Switch to Previous Tag |
| `Alt + Right` | Switch to Next Tag |

| Key | Description |
| --- | --- |
| `Alt + [` | Switch to Previous Tag |
| `Alt + ]` | Switch to Next Tag |


## Window

### Window Close

| Key | Description |
| --- | --- |
| `Win + q` | Window Close |

### Window FullScreen

| Key | Description |
| --- | --- |
| `Win + f` | Window FullScreen |

### Window Focus

| Key | Description |
| --- | --- |
| `Win + a` | Focus to Previous Window |
| `Win + s` | Focus to Next Window |

| Key | Description |
| --- | --- |
| `Win + h` | Focus to Previous Window |
| `Win + l` | Focus to Next Window |

| Key | Description |
| --- | --- |
| `Win + Left` | Focus to Previous Window |
| `Win + Right` | Focus to Next Window |


### Window Swap

| Key | Description |
| --- | --- |
| `Win + Enter` | Swap Focused Window To Top (Stack Order) |
| `Win + m` | Swap Focused Window To Top (Stack Order) |

| Key | Description |
| --- | --- |
| `Win + grave` | Swap Focused Window To Up (Stack Order) |
| `Win + Tab` | Swap Focused Window To Down (Stack Order) |

> grave means `

| Key | Description |
| --- | --- |
| `Win + k` | Swap Focused Window To Up (Stack Order) |
| `Win + j` | Swap Focused Window To Down (Stack Order) |

| Key | Description |
| --- | --- |
| `Win + Up` | Swap Focused Window To Up (Stack Order) |
| `Win + Down` | Swap Focused Window To Down (Stack Order) |

### Window Floating To Tile

| Key | Description |
| --- | --- |
| `Win + n` | Window Floating To Tile |
| `Win + Shift + t` | Window Floating To Tile |


## Layout

### Layout Switch

| Key | Description |
| --- | --- |
| `Alt + grave` | Switch To Previous Layout |
| `Alt + Tab` | Switch To Next Layout |

> grave means `

| Key | Description |
| --- | --- |
| `Alt + k` | Switch To Previous Layout |
| `Alt + j` | Switch To Next Layout |

| Key | Description |
| --- | --- |
| `Alt + Up` | Switch To Previous Layout |
| `Alt + Down` | Switch To Next Layout |

### Layout Resize

| Key | Description |
| --- | --- |
| `Alt + Ctrl + Up` | Increase Main Width |
| `Alt + Ctrl + Down` | Decrease Main Width |


## Wallpaper

| Keybind          | Action            | Command                                          |
| ---------------- | ----------------- | ------------------------------------------------ |
| `Alt + w`        | Wallpaper Shuf    | `feh --bg-fill --randomize ~/Pictures/Wallpaper` |
| `Alt + Ctrl + w` | Wallpaper Default | `feh --bg-fill ~/Pictures/Wallpaper/default.jpg` |

## Screenshot

| Keybind       | Action                   | Command    |
| ------------- | ------------------------ | ---------- |
| `Print`       | Screenshot               | `scrot`    |
| `Alt + Print` | Screenshot Selected Area | `scrot -s` |


## Volume


| Keybind           | Action                 | Command                                     |
| ----------------- | ---------------------- | ------------------------------------------- |
| `Alt + Shift + v` | Launch Volume Control  | `mate-volume-control`                       |
| `Alt + m`         | Volume Toggle Mute     | `amixer -q -D pulse sset Master toggle`     |


| Keybind           | Action                 | Command                                     |
| ----------------- | ---------------------- | ------------------------------------------- |
| `Alt + Shift + <` | Volume Decrease        | `amixer -q -D pulse sset Master 5%- unmute` |
| `Alt + Shift + >` | Volume Increase        | `amixer -q -D pulse sset Master 5%+ unmute` |
| `Alt + Ctrl + ,`  | Volume Decrease Slowly | `amixer -q -D pulse sset Master 1%- unmute` |
| `Alt + Ctrl + .`  | Volume Increase Slowly | `amixer -q -D pulse sset Master 1%+ unmute` |


> collision occurs on bash emacs mode
> * `Alt + ,`
> * `Alt + .`


| Keybind                | Action                 | Command                                     |
| ---------------------- | ---------------------- | ------------------------------------------- |
| `XF86AudioMute`        | Volume Toggle Mute     | `amixer -q -D pulse sset Master toggle`     |
| `XF86AudioLowerVolume` | Volume Decrease        | `amixer -q -D pulse sset Master 5%- unmute` |
| `XF86AudioRaiseVolume` | Volume Increase        | `amixer -q -D pulse sset Master 5%+ unmute` |
