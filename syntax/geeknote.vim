syn match GeeknoteSep         #=\+#

syn match GeeknoteNotebookKey #N\[.\+\]#
syn match GeeknoteNoteKey     #n\[.\+\]#
syn match GeeknoteTagKey      #T\[.\+\]#

syn match GeeknoteNotebook    #^.\+N\[.\+\]# contains=GeeknoteNotebookKey
syn match GeeknoteNote        #^.\+n\[.\+\]# contains=GeeknoteNoteKey
syn match GeeknoteTag         #^.\+T\[.\+\]# contains=GeeknoteTagKey

hi def link GeeknoteNotebookKey ignore
hi def link GeeknoteNoteKey     ignore
hi def link GeeknoteTagKey      ignore
hi def link GeeknoteSep         Question
hi def link GeeknoteNotebook    Title
hi def link GeeknoteTag         Title
hi def link GeeknoteNote        Type

" Short sentences ending in a colon are considered headings.
syn match GeeknoteShortHeading /^\s*\zs\u.\{1,50}\k:\ze\(\s\|$\)/ contains=@GeeknoteInline
hi def link GeeknoteShortHeading Title

" Atx style headings are also supported.
syn match GeeknoteAtxHeading /^#\+.*/ contains=GeeknoteAtxMarker,@GeeknoteInline
hi def link GeeknoteAtxHeading Title
syn match GeeknoteAtxMarker /^#\+/ contained
hi def link GeeknoteAtxMarker Comment
