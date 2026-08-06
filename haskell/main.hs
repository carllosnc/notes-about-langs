fizzBuzz value
  | value `mod` 3 == 0 = show value ++ " Fizz"
  | value `mod` 5 == 0 = show value ++ " Buzz"
  | value `mod` 15 == 0 = show value ++ " FizzBuzz"
  | otherwise = show value

classifyNumber n
  | n > 0 = "Positive"
  | n == 0 = "Zero"
  | otherwise = "Negative"

double x = x * 2

absolute x = if x >= 0 then x else -x

maxOfThree x y z
  | x > y = max x z
  | y > z = y
  | otherwise = z

evenNumbers xs = [if even x then x else x + 1 | x <- xs]

-- returning a string here
listLength xs = case xs of
  [] -> "Empty list"
  [_] -> "Single element"
  [_, _] -> "Two elements"
  [_, _, _] -> "Three elements"
  _ -> "More than three elements"

parseCommand cmd arg = case cmd of
  "create" -> case arg of
    "file" -> "Creating new file"
    "folder" -> "Creating new folder"
    "" -> "Error: create requires an argument"
    _ -> "Error: unknown create target"
  "delete" -> case arg of
    "" -> "Error: delete requires an argument"
    _ -> "Deleting" ++ arg
  "help" -> "Available commands: create, delete, help"
  _ -> "unknonw command: " ++ cmd

main = do
  mapM_ (print . fizzBuzz) [1 .. 45]
