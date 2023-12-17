filetype off
syntax enable
set number
"set relativenumber
set tabstop=4
set softtabstop=4
set hlsearch
set incsearch
set shiftwidth=4
set expandtab
set autoindent
set cindent
set nocompatible
set colorcolumn=100
set smartcase
"set background=dark
set termguicolors
set cursorline
set laststatus=2
set showcmd
set wildmenu
set showmatch
set lazyredraw
filetype plugin indent on
set wildignore+=*.o,.git,CMakeFiles,CMakeCache.txt
set hidden
set noswapfile

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim' "THEME
    Plug 'sainnhe/everforest'       "THEME
    Plug 'sainnhe/gruvbox-material' "THEME
    Plug 'rmehri01/onenord.nvim', { 'branch': 'main' } "THEME
    Plug 'mcchrish/zenbones.nvim'   "THEME
        Plug 'rktjmp/lush.nvim'
    Plug 'ellisonleao/gruvbox.nvim', { 'branch': 'main' }   "THEME
    Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }   "THEME
    Plug 'shaunsingh/solarized.nvim'                    "THEME
    Plug 'overcache/NeoSolarized'                      "THEME
    Plug 'EdenEast/nightfox.nvim'                      "THEME
    Plug 'ayu-theme/ayu-vim'                            "THEME
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'NeogitOrg/neogit' 
        Plug 'sindrets/diffview.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-highlight'
    Plug 'neovim/nvim-lspconfig'
    Plug 'simrat39/rust-tools.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' 
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'preservim/nerdtree'
    Plug 'github/copilot.vim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'neovim/nvim-lspconfig'
    Plug 'ray-x/go.nvim'
    Plug 'ray-x/guihua.lua'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
call plug#end()

"let g:everforest_background = 'hard'
"colorscheme gruvbox-material
"colorscheme everforest
"colorscheme nordic

"for ayu theme:
let ayucolor="dark" "light or mirage or dark
colorscheme ayu

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

"let g:airline_theme='base16_nord'
"let g:airline_theme='base16_gruvbox_dark_medium'

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
"Shift + K to show documentation for a function
nnoremap <silent> K :call <SID>show_documentation()<CR>

"Allow scrolling through coc pop-ups with control+arrow keys
nnoremap <nowait><expr> <C-Down> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-Up> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-Down> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-Up> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

"Allow scrolling through coc pop-ups with control f and control b
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Applying codeAction to the selected region.
" Example: `<leader>Aap` for current paragraph
xmap <leader>A  <Plug>(coc-codeaction-selected)
nmap <leader>A  <Plug>(coc-codeaction-selected)

" Apply codeAction to current cursor position
nmap <leader>a  <Plug>(coc-codeaction-cursor)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
local neogit = require('neogit')
neogit.setup {}

-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "fl",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

--require('feline').setup()
require('gitsigns').setup()
require'lspconfig'.pyright.setup{}
EOF


