# Neovim Configuration (Lua + Lazy.nvim)

This is a modern Neovim configuration using [Lua](https://www.lua.org/), powered by [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management. It’s fast, modular, and ideal for development in languages like Python, JavaScript, TypeScript and web frameworks like Django, React.js.

---

## ✨ Features

- 📦 Plugin management with `lazy.nvim`
- 🧠 LSP setup using `nvim-lspconfig`
- 🧾 Autocompletion with `nvim-cmp` + `LuaSnip`
- 🌈 Colorscheme: `tokyonight`
- 🔍 File searching via `telescope.nvim`
- 🌳 Tree view using `nvim-tree`
- 🪄 Auto-pairing, auto-tagging, and formatting
- ✅ Git integration with `gitsigns.nvim`
- ⌨️ Clean keymap organization
- 📊 Beautiful statusline with `lualine.nvim`
- 🧠 Treesitter highlighting & syntax parsing
- 🔄 Autosave and more

---

## 📁 File Structure

```bash
~/.config/nvim/
├── init.lua
├── lua/
│   ├── configs/
│   │   ├── nvim-lsp.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-keymaps.lua
│   │   ├── nvim-settings.lua
│   │   └── ...
│   ├── plugins/
│   │   ├── nvim-lualine.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-telescope.lua
│   │   ├── ...
│   ├── nvim-lazy-setup.lua
```

---

## 🚀 Getting Started

### 1. Install Neovim

You need **Neovim v0.9+**

### 2. Clone this config

```bash
git clone https://github.com/shaileshpandit141/neovim-config ~/.config/nvim
```

### 3. Open Neovim

```bash
nvim
```

The first launch will auto-install `lazy.nvim` and sync all plugins.

---

## 📦 Plugin Highlights

| Plugin                     | Description                               |
|---------------------------|-------------------------------------------|
| `lazy.nvim`               | Fast plugin manager                       |
| `nvim-lspconfig`          | LSP setup for multiple languages          |
| `nvim-cmp` + `LuaSnip`    | Completion & snippets                     |
| `nvim-treesitter`         | Syntax highlighting + code understanding |
| `nvim-tree`               | File explorer                             |
| `telescope.nvim`          | Fuzzy finder (files, buffers, etc.)       |
| `gitsigns.nvim`           | Git signs in gutter                       |
| `tokyonight.nvim`         | Colorscheme                               |
| `lualine.nvim`            | Statusline                                |
| `nvim-autopairs`          | Auto close brackets/quotes                |
| `autosave.nvim`           | Autosaves your files                      |

---

## 🛠️ Commands

- `:Lazy` — open the Lazy plugin manager UI
- `:Lazy sync` — install or update plugins
- `:LspInfo` — view LSP status
- `:Telescope` — launch file finder
- `:NvimTreeToggle` — toggle file explorer

---

## 🧪 Testing & Syncing Headless (CI)

If you’re using CI/CD or testing in headless mode:

```bash
nvim --headless "+Lazy sync" +qa
```

---

## 📄 License

This config is open-source under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

**Shailesh**
Feel free to fork and customize this to your own style. PRs and suggestions are welcome!

---

Let me know if you'd like to include:

- Screenshots of your Neovim setup
- Instructions for language-specific tools (e.g., Python LSP, formatters)
- Your exact plugin list prefilled in the README

Happy coding 🧠💻
