if exists('g:loaded_vim_bet')
  finish
endif
let g:loaded_vim_bet = 1

command! -nargs=1 BetExec call vim-bet#execute(<q-args>)
dsafafddsafasdf
