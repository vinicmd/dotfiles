# dotfiles

## Fedora

### First initialization

```shell
sudo dnf update -y
```

### Install programs
```shell
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && sudo dnf check-update && sudo dnf install code git gnome-tweaks zsh tilix -y
```

### Install Jetbrains Mono
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
```

### ZSH as default
```shell
sudo usermod --shell $(which zsh) $USER
```

### OhMyZsh
```shell
 curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
```
