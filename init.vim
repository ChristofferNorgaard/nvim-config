call plug#begin()

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<Tab>'
    let g:UltiSnipsJumpForwardTrigger = '<Tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-Tab>'
    let g:UltiSnipsSnippetDirectories=['/home/jakob/.config/nvim/UltiSnips']  " using Neovim

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

" Plug 'KeitaNakamura/tex-conceal.vim'
"    set conceallevel=1
"    let g:tex_conceal='abdmg'
"    hi Conceal ctermbg=none

call plug#end()

" Default tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set spell spelllang=en_us,sl

inoremap <C-f> <Esc>: silent exec '.!ipe-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!ipe-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
