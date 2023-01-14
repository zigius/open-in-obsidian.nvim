# open-in-obsidian.nvim
open current file in obsidian vault

### 📚 Requirements

-   Neovim >= 0.5.0

&nbsp;

### 📦 Installation

Install the plugin with your favourite package manager:

<details>
	<summary><a href="https://github.com/wbthomason/packer.nvim">Packer.nvim</a></summary>

```lua
use({
	"zigius/open-in-obsidian.nvim",
	config = function()
		 require("open-in-obsidian.nvim")
	end,
})
```

</details>

<details>
	<summary><a href="https://github.com/junegunn/vim-plug">vim-plug</a></summary>

```vim
Plug 'zigius/open-in-obsidian.nvim',
lua << EOF
	require("open-in-obsidian.nvim")
EOF
```

</details>

&nbsp;
