 "Vimtex settings
"let g:vimtex_view_method = 'skim'
"let g:vimtex_compiler_latexmk = {
    "\ 'build_dir': 'build',
    "\ 'callback': 1,
    "\ 'continuous': 1,
    "\ 'executable': 'latexmk',
    "\ 'options': [
        "\ '-pdf',
        "\ '-file-line-error',
        "\ '-synctex=1',
        "\ '-interaction=nonstopmode',
        "\ '-outdir=%DIRECTORY%',
    "\ ],
    "\}
"let g:vimtex_quickfix_enabled = 0
"let g:vimtex_quickfix_mode = 0
"let g:vimtex_compiler_verbose = 0
"let g:vimtex_compiler_fail_fast = 0
"let g:vimtex_compiler_progname = 'nvr'
"let g:vimtex_compiler_method = 'nvr'
"let g:vimtex_compiler_auto_build = 1
"let g:vimtex_view_general_options = '-x "open -a Skim"'
"autocmd! BufWritePost *.tex :silent! VimtexCompile
"autocmd BufWritePost *.tex :VimtexCompile

"" vimtexの設定
"let g:vimtex_compiler_latexmk = {
  "\ 'build_dir' : '.',
  "\ 'callback' : 1,
  "\ 'continuous' : 1,
  "\ 'executable' : 'latexmk',
  "\ 'options' : [
    "\ '-verbose',
    "\ '-file-line-error',
    "\ '-synctex=1',
    "\ '-interaction=nonstopmode',
    "\ '-pdf',
    "\ '-pvc'
  "\ ],
  "\}
"let g:vimtex_view_method = 'skim'

"" ファイルの自動保存とコンパイル
"augroup autocompile
  "autocmd!
  "autocmd BufWritePost *.tex,VimtexCompile * silent! call vimtex#compiler#compile()
"augroup END

let g:vimtex_view_general_viewer = 'displayline'
let g:vimtex_view_general_options = '@line @pdf @tex'
let g:tex_flavor = "latex"
let maplocalleader=','
let g:vimtex_compiler_auto_build = 1
let g:vimtex_complete_enabled = 1
let g:vimtex_view_auto_close = 1
"let g:vimtex_completions_enabled = 1
let g:vimtex_quickfix_mode = 1
let g:vimtex_math_env_toggle = 1
let g:tex_conceal = ''
