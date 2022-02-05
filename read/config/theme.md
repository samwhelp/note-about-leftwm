---
title: 佈景主題
nav_order: 2010
has_children: false
parent: 設定
---


# 佈景主題

有下面幾種方式來安裝「佈景主題」

* [手動安裝採用](#手動安裝採用)
* [透過leftwm-theme輔助安裝](#透過leftwm-theme輔助安裝)
* [透過leftwmrc-theme-get輔助安裝](#透過leftwmrc-theme-get輔助安裝)

相關的說明可以參考「 leftwm / Wiki / [Themes](https://github.com/leftwm/leftwm/wiki/Themes)」。

佈景主題可以在「[LeftWM Community Themes](https://github.com/leftwm/leftwm-community-themes) / [known.toml](https://github.com/leftwm/leftwm-community-themes/blob/master/known.toml)」找到相關的連結。


## 佈景主題路徑

| 路徑 | 屬域 |
| --- | --- |
| ~/.config/leftwm/themes | 個人區域 |
| [/usr/share/leftwm/themes](https://github.com/leftwm/leftwm/tree/master/themes) | 系統全域 |


## 手動安裝採用

### 安裝採用個人慣用的佈景主題

以安裝「[Dracula Rounded](https://github.com/AethanFoot/leftwm-theme-dracula-rounded/)」這個「佈景主題」為例。

``` sh
mkdir -p ~/.config/leftwm/themes
cd ~/.config/leftwm/themes
git clone https://github.com/AethanFoot/leftwm-theme-dracula-rounded.git dracula_rounded
ln -sf current dracula_rounded
```

基本上就是安裝到「~/.config/leftwm/themes」這個資料夾，

也就是「~/.config/leftwm/themes/dracula_rounded」，

接著建立「symbolic link」，將「current」連結到「dracula_rounded」。

也就是建立「~/.config/leftwm/themes/current」。

要注意「佈景主題」資料夾，需要有兩個可執行檔案「[up](https://github.com/AethanFoot/leftwm-theme-dracula-rounded/blob/master/up)」和「[down](https://github.com/AethanFoot/leftwm-theme-dracula-rounded/blob/master/down)」，

相關說明可以在「leftwm / Wiki / Themes / [Requirements for a theme](https://github.com/leftwm/leftwm/wiki/Themes#requirements-for-a-theme)」找到。

### 採用系統自帶的佈景主體

或是採用「[basic_polybar](https://github.com/leftwm/leftwm/tree/master/themes/basic_polybar/)」這個佈景主題。

``` sh
mkdir -p ~/.config/leftwm/themes
cd ~/.config/leftwm/themes
ln -sf current /usr/share/leftwm/themes/basic_polybar
```


## 透過leftwm-theme輔助安裝

透過「[leftwm-theme](https://github.com/leftwm/leftwm-theme)」這個指令， 來輔助安裝「佈景主題」，

相關的「佈景主題」，可以到「[LeftWM Community Themes](https://github.com/leftwm/leftwm-community-themes)」找到連結。

或是也可以參考我自己整理的[列表](https://samwhelp.github.io/note-about-leftwm/read/project/leftwmrc-profile/leftwmrc-theme-get.html#%E4%BD%BF%E7%94%A8%E7%AF%84%E4%BE%8B)。


## 透過leftwmrc-theme-get輔助安裝

也可以採用我自己開發的腳本「[leftwmrc-theme-get](https://samwhelp.github.io/note-about-leftwm/read/project/leftwmrc-profile/leftwmrc-theme-get.html)」來輔助安裝「佈景主題」。

以安裝「[Dracula Rounded](https://samwhelp.github.io/note-about-leftwm/read/project/leftwmrc-profile/leftwmrc-theme-get.html#dracula_rounded)」這個「佈景主題」為例。

執行下面指令安裝

``` sh
leftwmrc-theme-get dracula_rounded
```

接著透過我自己開發的腳本「[leftwmrc-theme-ctrl](https://samwhelp.github.io/note-about-leftwm/read/project/leftwmrc-profile/leftwmrc-theme-ctrl.html)」來輔助設定要採用的「佈景主題」。

執行下面指令，設定「佈景主題」採用「dracula_rounded」。

``` sh
leftwmrc-theme-ctrl set dracula_rounded
```

或是執行下面指令，選擇要採用的「佈景主題」。

``` sh
leftwmrc-theme-ctrl fzf
```
