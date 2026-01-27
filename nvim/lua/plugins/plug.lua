vim.cmd([[
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-plug'

Plug 'sheerun/vim-polyglot'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

Plug 'tpope/vim-fugitive'

Plug 'nvim-lualine/lualine.nvim'

Plug 'windwp/nvim-autopairs'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Mofiqul/vscode.nvim'

Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'

Plug 'nvim-pack/nvim-spectre'

call plug#end()
]])
