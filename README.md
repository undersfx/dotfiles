# My initial setup for aptitude (apt) based distros

Update Aptitude
```bash
sudo apt update
```

Install Base Packages
```bash
sudo apt install git curl wget xclip vim -y
```

Clone this repo
```bash
git clone https://github.com/undersfx/dotfiles.git
```

Run setup.sh as root for
```bash
cd dotfiles
sudo sh setup.sh
```

Run setup.sh as root for
```bash
cd dotfiles
sudo sh setup.sh
```

Requires logout!

Run the scripts to install asdf-vm and zsh themes:
```bash
sudo sh asdf_setup.sh
sudo sh zsh_setup.sh
```

Update the dotfiles with the new config
```bash
sh update_dotfiles.sh
```

# If using GNOME

Remove GNOME bug when switching keybooard layout:
```bash
sudo vim /usr/share/X11/xkb/symbols/br
```

Comment this line: `modifier_map Mod3   { Scroll_Lock };`

Install GNOME setup
```bash
sudo sh gnome_setup.sh
```
