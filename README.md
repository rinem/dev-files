# Dev config files

## Nvim Config

A simple extendable lazy config for Neovim created with ['kickstart.nvim'](https://github.com/nvim-lua/kickstart.nvim)

### Installation

### Install Neovim

Download neovim
- ['stable'](https://github.com/neovim/neovim/releases/tag/stable) 
- ['nightly'](https://github.com/neovim/neovim/releases/tag/nightly)
If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

> **NOTE**
> Backup your previous configuration (if any exists)

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Language Setup:
  - If want to write Typescript, you need `npm`
  - If want to write Golang, you will need `go`

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

### Update config

- Clone this repo:

```sh
git clone https://github.com/rinem/dev-files.git
```

- Move nvim folder to .config

```sh
cd dev-files/.config
mv nvim ~/.config/
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
current plugin status.

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim.

Config files and dot files for dev tools and applications.
Read the notes to get better understanding of how to use the config files


### Notes

- Use the latest version of newovim >= 0.8 atleast
- Install ripgrep using the command - `sudo apt-get install ripgrep` for telescope fuzzy-finder to work
- Install a Nerd font for some icons to work
- You will need a C compiler in the path for treesitter to work properly
  For linux we can install gcc using the command - `sudo apt-get install build-essential`
- To install the lsp servers run the `:Mason` command in neovim
- Install node before working in Javascript/Typescript project

## TMUX Setup

- Install the latest version of TMUX
- Add TPM for managing plugins with this command
  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Update .tmux.conf file from this repo and source the config file with
  `tmux source ~/.tmux.conf`
- Use the prefix which should be `Ctrl-b` and `I` to install all the plugins

### Alacritty
- Just copy the alacritty folder to ~/.config folder

### Windows Terminal
- Just copy the settings.json file from windows-terminal folder to the location `C:\Users\<username>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`

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

### Polybar
- Install polybar then move the polybar folder to ~/.config
- Make sure to have JetBrains Nerd Font for the glyphs/icons
- Add this line in i3 config to start polybar with window manager
`exec_always --no-startup-id ~/.config/polybar/launch.sh`
