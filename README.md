<h3 align="center">
  <div align="center"><h1>Hyprland dotfiles and NixOS config</h1></div>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>


## 📦 Programs

List of programs and tools I use.


| Component         | Program    |
|-------------------|------------|
| Windows Manager 🪟| [dwm](https://dwm.suckless.org/)                      |
| File Manager 📁   | [ranger](https://github.com/ranger/ranger)            |
| Editor 📝         | [neovim](https://github.com/neovim/neovim)            |
| Bar 📊            | [dwmblocks](https://github.com/torrinfail/dwmblocks)  |


## 🎸 Preview
![image](https://github.com/a2p1k02/dotfiles/assets/35633190/c265405c-9a4b-4482-a926-33ddeb13aa12)

## Gentoo package installation
```

emerge --ask app-shells/zsh x11-misc/nitrogen www-client/firefox-bin net-misc/remmina dev-vcs/git sys-devel/clang sys-devel/gcc x11-apps/xinput x11-apps/xinit sys-apps/flatpak app-admin/doas app-editors/neovim app-i18n/ibus app-i18n-ibus-table-chinese app-i18n/ibus-table app-i18n/ibus-libpinyin app-i18n/ibus-pinyin x11-terms/kitty x11-temrs/alacritty app-misc/fastfetch net-im/telegram-desktop-bin net-vpn/wireguard-tools net-im/discord media-sound/pulseaudio media-sound/pavucontrol media-fonts/noto-cjk x11-apps/setxkbmap

```

## Zsh installation
```

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

## Emacs setup
```mkdir -p ~/.emacs.d/
wget -P ~/.emacs.d/ https://raw.githubusercontent.com/a2p1k02/dotfiles/main/init.el
mkdir -p ~/.emacs.d/elpa/autopair-20160304.1237
wget -P ~/.emacs.d/elpa/autopair-20160304.1237/ https://raw.githubusercontent.com/a2p1k02/dotfiles/main/autopair.el
wget -P ~/.emacs.d/ https://raw.githubusercontent.com/a2p1k02/dotfiles/main/logo.txt
```
