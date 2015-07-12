" Autoset the Lambda file type

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.lambda setfiletype lambda
augroup END
