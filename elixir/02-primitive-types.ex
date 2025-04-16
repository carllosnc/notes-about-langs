defmodule Example do
  def primitive_types do
    # Integer
    a = 42
    IO.puts("Integer: #{a}")

    # Float
    b = 3.14
    IO.puts("Float: #{b}")

    # Atom
    c = :ok
    IO.puts("Atom: #{c}")

    # Boolean
    d = true
    IO.puts("Boolean: #{d}")

    # String
    e = "Hello, Elixir!"
    IO.puts("String: #{e}")

    # Binary
    f = <<1, 2, 3>>
    IO.puts("Binary: #{inspect(f)}")

    # List
    g = [1, 2, 3]
    IO.puts("List: #{inspect(g)}")

    # Tuple
    h = {:ok, "success"}
    IO.puts("Tuple: #{inspect(h)}")

    # Map
    i = %{name: "Alice", age: 30}
    IO.puts("Map: #{inspect(i)}")

    # Keyword
    j = [a: 1, b: 2]
    IO.puts("Keyword: #{inspect(j)}")

    # Charlist
    k = ~c"hello"
    IO.puts("Charlist: #{inspect(k)}")
  end
end

Example.primitive_types()
