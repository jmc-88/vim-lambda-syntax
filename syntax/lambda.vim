" Vim syntax file
" Language: Lambda
" Maintainers: Daniele Cocca, Alberto La Rocca
" Latest Revision: September 7th, 2016
"
" Based on:
"   https://github.com/71104/lambda/wiki/Learn-Lambda

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" {{{ Enable case-sensitive matching

syn case match

" }}} Enable case-sensitive matching

" {{{ Comment syntax

syn keyword lambdaTodo contained  TODO FIXME XXX NOTE
hi def link lambdaTodo            Todo

syn match lambdaComment           "#.*$" contains=lambdaTodo display
hi def link lambdaComment         Comment

" }}} Comment syntax

" {{{ Value syntax

" TODO: add highlighting rules for integer, real, and complex numbers.

syn match lambdaBoolean           "\<true\|false\>" display
hi def link lambdaBoolean         Boolean

syn region lambdaString           start='"' skip='\\"' end='"' display
syn region lambdaString           start='\'' skip='\\"' end='\'' display
hi def link lambdaString          String

syn keyword lambdaIdentifier      this
hi def link lambdaIdentifier      Identifier

" }}} Value syntax

" {{{ Type syntax

syn keyword lambdaType            undefined
syn keyword lambdaType            complex real integer natural
syn keyword lambdaType            boolean
syn keyword lambdaType            string
syn keyword lambdaType            regex
syn keyword lambdaType            unknown
hi def link lambdaType            Type

" }}} Type syntax

" {{{ Language keywords and statements

syn keyword lambdaFunction        fn
hi def link lambdaFunction        Function

syn keyword lambdaStatement       let in fix seq
hi def link lambdaStatement       Statement

syn keyword lambdaConditional     if then else
hi def link lambdaConditional     Conditional

syn keyword lambdaKeyword         new not and or xor
hi def link lambdaKeyword         Keyword

syn keyword lambdaException       try catch finally throw error throws
hi def link lambdaException       Exception

" }}} Language keywords and statements

" {{{ Register syntax

let b:current_syntax = "lambda"

" }}} Register syntax
