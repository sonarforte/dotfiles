if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  " au! commands to set the filetype go here
  " au! BufNewFile,BufRead *.jsx setf javascript
  " au! BufNewFile,BufRead *.jsx setf html
augroup END
au FileType jsx set filetype=js.html
