# Dev config files

Config files and dot files for dev tools and applications.
Read the notes to get better understanding of how to use the config files

### Notes

#### Neovim setup

- Use the latest version of newovim >= 0.8 atleast
- Save the plugins-setup.lua file to install the plugins
- Install ripgrep using the command - `sudo apt-get install ripgrep` for telescope fuzzy-finder to work
- Install a Nerd font for some icons to work
- You will need a C compiler in the path for treesitter to work properly
  For linux we can install gcc using the command - `sudo apt-get install build-essential`
- To install the lsp servers run the `:Mason` command in neovim
- Install node before working in Javascript/Typescript project

### TMUX Setup

- Install the latest version of TMUX
- Add TPM for managing plugins with this command
  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Update .tmux.conf file from this repo and source the config file with
  `tmux source ~/.tmux.conf`
- Use the prefix which should be `Ctrl-b` and `I` to install all the plugins

### Alacritty
- Just copy the alacritty folder to ~/.config folder

### Rofi 
- Download JetBrains Mono Nerd Font first from [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip)
- Extract font to .fonts folder in ~/ and then clear cache with `fc-cache -f -v`
- Copy rofi folder to ~/.config folder 

### Starship
- Install starship and copy `starship.toml` file to ~/.config
`curl -sS https://starship.rs/install.sh | sh`
- Add this line to the end of your .zshrc
`eval "$(starship init zsh)"`

### Picom
- Install picom and copy picom folder to ~/.config
- Add this line to start picom with the window manager i3
`exec_always --no-startup-id picom`
