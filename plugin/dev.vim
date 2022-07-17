function! ReloadDocker()
lua << EOF
    for k in pairs(package.loaded) do
        if k:match("^hello") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction
" Reload the plugin
nnoremap <Leader>prc :call ReloadDocker()<CR>
" Test the plugin
nnoremap <Leader>ptd Docker:lua require("docker").run()<CR>
