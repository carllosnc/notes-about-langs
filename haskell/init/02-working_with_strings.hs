import Data.Char (isAlpha, toLower, toUpper)

-- greet someone
greet :: String -> String
greet name = "hello, " ++ name ++ "!"

-- get string length
stringLength :: String -> Int
stringLength = length

-- make text uppercase
makeUpper :: String -> String
makeUpper = map toUpper

p = putStrLn

main :: IO ()
main = do
  p "=== String Functions ==="
  p $ greet "Alice"
  p "hello world"
  p $ "Length of 'Haskell':" ++ show (stringLength "Haskell")
  p $ "Uppercase 'Hello':" ++ makeUpper "hello"

  p "\nEnter your name:"
  name <- getLine
  p $ greet name
