filetyp on

syntax enable
"set number
set relativenumber
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
set termguicolors
set cursorline
"set cursorlineopt=number
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

let g:mapleader = ","

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim' "THEME
    Plug 'sainnhe/everforest'       "THEME
    Plug 'sainnhe/gruvbox-material' "THEME
    Plug 'rmehri01/onenord.nvim', { 'branch': 'main' } "THEME
    Plug 'rktjmp/lush.nvim'
    Plug 'zenbones-theme/zenbones.nvim' "THEME
    Plug 'morhetz/gruvbox'          "THEME
    Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }   "THEME
    Plug 'altercation/vim-colors-solarized'             "THEME
    Plug 'overcache/NeoSolarized'                      "THEME
    Plug 'EdenEast/nightfox.nvim'                      "THEME
    Plug 'ayu-theme/ayu-vim'                            "THEME
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }    "THEME
    Plug 'sainnhe/edge'                             "THEME
    Plug 'kartikp10/noctis.nvim'                     "THEME
    Plug 'rakr/vim-one'                              "THEME
    Plug 'savq/melange'                              "THEME
    Plug 'xero/miasma.nvim'                               "THEME
    Plug 'rebelot/kanagawa.nvim'                          "THEME
    Plug 'ramojus/mellifluous.nvim'                       "THEME
    Plug 'rafi/awesome-vim-colorschemes'                  "THEME
    Plug 'karoliskoncevicius/sacredforest-vim'           "THEME
    Plug 'wincent/base16-nvim'                           "THEME
    Plug 'tinted-theming/tinted-vim'                        "THEME
    "Plug 'lifepillar/vim-gruvbox8', {'branch': 'neovim'}    "THEME
    Plug 'aktersnurra/no-clown-fiesta.nvim'                 "THEME
    Plug 'lifepillar/vim-solarized8'                        "THEME
    "Plug 'p00f/alabaster.nvim'                              "THEME
    "Plug './themes/alabaster.nvim'                          "THEME
    Plug 'metalelf0/base16-black-metal-scheme'              "THEME
    Plug 'jordwalke/VimCleanColors'                         "THEME
    Plug 'craftzdog/solarized-osaka.nvim'                   "THEME
    Plug 'yorickpeterse/Autumn.vim'                         "THEME
    Plug 'shinchu/lightline-gruvbox.vim'                  "THEME FOR LIGHTLINE
    Plug 'itchyny/lightline.vim'
    Plug 'NeogitOrg/neogit' 
        Plug 'sindrets/diffview.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc-highlight'
    Plug 'neovim/nvim-lspconfig'
    Plug 'stevearc/aerial.nvim'
    Plug 'simrat39/rust-tools.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' 
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'github/copilot.vim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'ray-x/go.nvim'
    Plug 'ray-x/guihua.lua'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'rktjmp/lush.nvim'
    Plug 'f-person/git-blame.nvim'
    Plug 'klen/nvim-test'
    Plug 'lukas-reineke/indent-blankline.nvim'
    " Deps for avante
    Plug 'stevearc/dressing.nvim'
    Plug 'MunifTanjim/nui.nvim'
    " Optional for avante
    Plug 'hrsh7th/nvim-cmp'
    Plug 'HakonHarnes/img-clip.nvim'
    Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'pwntester/octo.nvim'


call plug#end()

"set background=dark
"colorscheme gruvbox-material

"colorscheme terafox
"colorscheme dawnfox

""https://github.com/tinted-theming/tinted-vim
"colorscheme base16-gruvbox-material-light-medium

""" CURRENT CHOICE OF LIGHT THEME FOR WORKING IN THE DAY
"set background=light
"colorscheme gruvbox8
"""
"colorscheme base16-sandcastle
"colorscheme base16-vulcan

"
"set background=light
"colorscheme solarized8_high
"

"
" I use this one a lot
"let g:everforest_background = 'medium'
"let g:everforest_better_performance = 1
"set termguicolors
"set background=dark
"colorscheme everforest
"
"

"colorscheme one
"set background=light

"colorscheme retrobox
"set background=light
"colorscheme gruvbox
"let g:gruvbox_contrast_light='medium'


"https://github.com/wincent/base16-nvim
"colorscheme base16-everforest-dark-hard

"set background=light "important to set background for code actions to have correct colors
"colorscheme base16-everforest
"colorscheme base16-gruvbox-material-dark-soft
"colorscheme base16-gruvbox-dark-hard
"colorscheme base16-solarized-light
"colorscheme base16-precious-light-warm
"colorscheme base16-embers-light
"colorscheme base16-kanagawa
"colorscheme base16-solarized-dark
"

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'rust']

" When using airline to avoid double mode show
set noshowmode

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction


" Helper function to configure the light theme
function! SetLightTheme() abort
  set background=light
  "colorscheme gruvbox8
  "colorscheme hybrid_material
  "colorscheme hybrid_reverse
  "colorscheme gruvbox-material
  "colorscheme spacegray
  "colorscheme tokyo-night-terminal-light
  colorscheme everforest
  let g:everforest_disable_italic_comment = 1
  "let g:gruvbox_material_foreground = "original"
  "colorscheme default
  " Optional lightline configuration
  let g:lightline = {
        \ 'colorscheme': 'ayu_light',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'FugitiveHead',
        \   'filename': 'LightlineFilename',
        \ },
    \ }
  call LightlineReload()
endfunction

" Helper function to configure the dark theme
function! SetDarkTheme() abort
  "let g:forestbones = #{ darken_comments: 45, italic_comments: v:false }

  "" Disable italics for zenbones.nvim theme while preserving colors
  "augroup NoItalicsZenbones
  "  autocmd!
  "  autocmd ColorScheme * highlight Comment gui=NONE cterm=NONE guifg=#6E7B85
  "  autocmd ColorScheme * highlight Constant gui=NONE cterm=NONE guifg=#ADA28B
  "  autocmd ColorScheme * highlight SpecialKey gui=NONE cterm=NONE guifg=#5D6D78
  "  autocmd ColorScheme * highlight Boolean gui=NONE cterm=NONE guifg=#E7DCC4
  "  autocmd ColorScheme * highlight String gui=NONE cterm=NONE guifg=#ADA28B
  "  autocmd ColorScheme * highlight diffNewFile gui=NONE cterm=NONE guifg=#A9C181
  "  autocmd ColorScheme * highlight diffOldFile gui=NONE cterm=NONE guifg=#E67C7F
  "augroup END

  " Set dark background and activate the forestbones theme
  set background=dark
  "colorscheme forestbones
  colorscheme everforest
  "colorscheme gruvbox-material
  "colorscheme happy_hacking
  "colorscheme spacegray
  "colorscheme solarized-osaka
  "colorscheme autumn
  " Optional lightline configuration (using gruvbox here for consistency)
  let g:lightline = {
        "\ 'colorscheme': 'ayu-mirage',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'FugitiveHead',
        \   'filename': 'LightlineFilename',
        \ },
    \ }
  call LightlineReload()
endfunction

" Main function to switch between themes
function! SwitchTheme(mode) abort
  if a:mode ==# 'light'
    call SetLightTheme()
  elseif a:mode ==# 'dark'
    call SetDarkTheme()
  else
    echoerr 'Invalid mode! Use "light" or "dark".'
  endif
endfunction

command! -nargs=1 Theme call SwitchTheme(<f-args>)

"set light theme by calling the function
call SetLightTheme()
" Tokyo Night Light theme-inspired diff colors
highlight DiffAdd    guifg=#2c6c40 guibg=#d5e5d6 gui=NONE
highlight DiffDelete guifg=#ab5959 guibg=#f7e3e5 gui=NONE
highlight DiffChange guifg=#4c6cbe guibg=#d5e1f2 gui=NONE
highlight DiffText   guifg=#4c6cbe guibg=#b4c9ef gui=bold

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"NERDTree settings
nnoremap <leader>n :NvimTreeFocus<CR>
nnoremap <C-n> :NvimTreeToggle<CR> 
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NvimTree') && b:NvimTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
"Shift + K to show documentation for a function
nnoremap <silent> K :call <SID>show_documentation()<CR>
"Ctrl + K to show documentation for a function in insert mode
inoremap <silent> <C-k> <Esc>:call <SID>show_documentation()<CR>


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


inoremap <C-e> <Esc>A


"Better tab manipulation
nnoremap ta :tabnew<CR>
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
"nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
"nnoremap <expr> tt (v:count1 < 1 ? 1 : v:count1) . 'gt'

nnoremap <nowait> tt gt
autocmd! User avante.nvim

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
  pickers = {
    find_files = {
      hidden = true,

    }, 

  vimgrep_arguments = {
    'rg',
    '--color=never',
    '--no-heading',
    '--with-filename',
    '--line-number',
    '--column',
    '--smart-case',
    '--hidden',
    },

  file_ignore_patterns = {
    ".git/",
    "node_modules/",
    },
  }
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

require("toggleterm").setup()
require("octo").setup()

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
require'aerial'.setup()
require("ibl").setup()
require("nvim-test").setup{}

require('avante_lib').load()
require('avante').setup()
vim.opt.laststatus = 3
EOF
