function! vim_bet#execute(append_char) abort

  let [start_l, start_c] = getpos("'<")[1:2]
  let [end_l, end_c] = getpos("'>")[1:2]

  if start_l != end_l
    return
  endif

  if start_c > end_c
    let temp = start_c
    let end_c = start_c
    let start_c = end_c
  endif


  let line = getline(start_l)

  if start_c > 1
    let pre = line[:start_c-2]
  else
    let pre = ""
  endif

  let target = line[start_c-1:end_c-1]

  let next = line[end_c:]

  let new_line = join([pre, a:append_char[0], target, a:append_char[1], next], "")

  call setline(start_l, new_line)
  return

endfunction
