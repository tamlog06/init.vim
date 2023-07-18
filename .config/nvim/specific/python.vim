"let g:python3_host_prog = '/opt/homebrew/var/pyenv/versions/neovim3/bin/python'

if empty($VIRTUAL_ENV)
    let g:python3_host_prog = '/opt/homebrew/var/pyenv/versions/neovim3/bin/python'
else
    let g:python3_host_prog = $VIRTUAL_ENV . '/bin/python'
endif
