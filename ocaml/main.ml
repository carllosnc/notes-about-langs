#!/usr/bin/env ocaml

let add x y = x + y
let add_five = add 5

let () =
  print_int (add_five 10)