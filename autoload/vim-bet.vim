function! vim-bet#Execute() abort
  let v_start = getpos("v")
  let start_r = v_start[1]
  let start_c = v_start[2]
  let v_end = getpos(".")
  let end_r = v_end[1]
  let env_c = v_end[2]

  if {start_r != end_r}
    return
  endif

  if {start_c > end_c}
    let temp = start_c
    let end_c = start_c
    let start_c = end_c


  let line = getline(start_r)
  let pre = line[:start_c]
  let target = line[start_c+1:end_c]
  let next = line[end_c+1:]

  let append_char = a:append_char
  let new_line = join(pre, target, append_char)
  let new_line = join(new_line, next, append_char)

  setline(start_r, new_line)

