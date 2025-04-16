defmodule Variables do
  # variables and rebinding
  x = "Hello World!"
  IO.puts(x)
  x = "Hello from Elixir!"
  IO.puts(x)

  # pattern matching example
  {x, y} = {1, 2}
  IO.puts(y)
  IO.puts(x + y)

  # head and tails
  [head | tail] = [1, 2, 3]
  IO.puts(head)
  IO.puts(tail)
end
