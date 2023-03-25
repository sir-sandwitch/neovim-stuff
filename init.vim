" ---
" set variables
" ---


" Remove compatibility with VI
set nocompatible
" Set encoding to utf-8
set encoding=utf-8
scriptencoding utf-8
" Disable swap file
set noswapfile
" Disable bells
set noerrorbells
" Set clipboard register to system clipboard
set clipboard=unnamed,unnamedplus
" Wrap line to previous line's indentation
set breakindent
" Show line numbers and set width to 4
set number numberwidth=4
" Case insensitive search for lowercase query
set ignorecase
" Case sensitive search for queries with caps
set smartcase
" Display tabs as 2 spaces
set tabstop=2
" Indent with 2 spaces when >> << == are used
set shiftwidth=2
" Tab key will insert spaces instead of tabs
set expandtab
" Display trailing whitespaces as • and tab as →•
set list listchars=trail:•,tab:→•
" Show cursor line
set cursorline

" ---
" vim-plug
" ---

call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-tree/nvim-web-devicons'

Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

" ---
" catppuccin
" ---

set background=dark
set termguicolors

lua << EOF
local catppuccin = require("catppuccin")

catppuccin.setup({
  integrations = {
    ts_rainbow = true,
  },
  color_overrides = {
    mocha = {
      text = "#F4CDE9",
      subtext1 = "#DEBAD4",
      subtext0 = "#C8A6BE",
      overlay2 = "#B293A8",
      overlay1 = "#9C7F92",
      overlay0 = "#866C7D",
      surface2 = "#705867",
      surface1 = "#5A4551",
      surface0 = "#44313B",

      base = "#352939",
      mantle = "#211924",
      crust = "#1a1016",
    },
  },
})
EOF

colorscheme catppuccin


lua << EOF
require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {},
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
      custom_only = false,
      list = {},
    },
  },
})
EOF

NvimTreeToggle
