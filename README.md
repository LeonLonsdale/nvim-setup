# Disclaimer

This is just for personal use so I won't be maintaining it as a distro or anything similar - it will be updated when I feel like it needs something changing.

[Nerd Chat](https://discord.gg/YK4F8sSbBx)

![Example](https://www.github.com/LeonLonsdale/nvim-setup/example.png)

# Install

Download the zip, extract the contents to wherever nvim expects to find a config on your system.

The setup uses Warp terminal. Get it with Homebrew `brew install --cask warp`
With Catppucin theming:
```
mkdir -p ~/.warp/themes/
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_latte.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_frappe.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_macchiato.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_mocha.yml
```
And [starship prompts](https://starship.rs/)


# Keybinds

Leader is set to `spacebar`

leader, q = close buffer
leader, Q = force close buffer
leader, w = write file
leader, W = force write file
leader, e = edit
leader, E = back to explorer mode

## nvim-tree

control + n = toggle nvim-tree

## Searching

leader, s, f = search files
leader, s, h = search help
leader, s, g = search grep
leader, s, r = search recently opened files / buffers
leader, s, w = search for the word under the cursor
leader, s, b = search buffered files

## Git

leader, g, o = open LazyGit
leader, g, f = find git files

## Code management

leader, c, f = format
leader, c, h = hover info for word under cursor
leader, c, d = definition of word under cursor
leader, c, a = see code actions
leader, c, r = see references

# Plugins

- [Copilot](https://www.github.com/github/copilot.vim)
- [Auto Pairs](https://www.github.com/windwp/nvim-autopairs)
- [indent blankline](https://www.github.com/lukas-reineke/indent-blankline.nvim)
- [comment](https://www.github.com/numToStr/Comment.nvim)
- [cmp](https://www.github.com/hrsh7th/cmp-nvim-lsp)
- [LazyGit](kdheepak/lazygit.nvim)
- [LuaLine](nvim-lualine/lualine.nvim)
- [Mason](https://www.github.com/williamboman/mason.nvim)
- [Mason LSP Config](https://www.github.com/williamboman/mason-lspconfig.nvim)
- [nVim LSP Config](https://www.github.com/neovim/nvim-lspconfig)
- [None LS](https://www.github.com/nvimtools/none-ls.nvim)
- [nVim Tree](https://www.github.com/nvim-tree/nvim-tree.lua)
- [Rainbow Delimiters](https://www.github.com/hiphish/rainbow-delimiters.nvim)
- [Treesitter](https://www.github.com/nvim-treesitter/nvim-treesitter)
- [Twilight](https://www.github.com/folke/twilight.nvim)
- [Telescope](https://www.github.com/nvim-telescope/telescope.nvim)
- [Which-key](https://www.github.com/folke/which-key.nvim)

# Theme

[Catppuccin-mocha](https://www.github.com/catppuccin/nvim)
