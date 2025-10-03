-- function declaration and definition
add :: Int -> Int -> Int
add x y = x + y

-- square a number
square :: Int -> Int
square x = x * x

-- check if a number is even
isEven :: Int -> Bool
isEven = even

main :: IO ()
main = do
  putStrLn "=== Math Functions ==="
  putStrLn "hello world"
  putStrLn $ "add 5 3 = " ++ show (add 10 20)
  putStrLn $ "isEven 40 = " ++ show (isEven 40)
  putStrLn $ "isEven 20 = " ++ show (even 20)