" obsidian vimrc

" clipboard
set clipboard=unnamed

" must be unbound <Space> first
" https://github.com/esm7/obsidian-vimrc-support/tree/f2417c0193448801172124e7d39e1f9f74dd2617#some-help-with-binding-space-chords-doom-and-spacemacs-fans
unmap <Space>
nmap <Space>h :nohlsearch
nmap <Space>w :w

nmap H ^
nmap L $
nmap dH d^

vmap H ^
vmap L $

imap jk <Esc>