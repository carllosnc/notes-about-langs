-- working with lists

-- safe first element
safeFirst :: [a] -> Maybe a
safeFirst [] = Nothing
safeFirst (x : _) = Just x

-- add element to benning
addToFront :: a -> [a] -> [a]
addToFront x xs = x : xs

-- combine two lists
combine :: [a] -> [a] -> [a]
combine xs ys = xs ++ ys

p = putStrLn

main = do
  p "=== List Operations ==="
  let numbers = [1, 2, 3, 4, 5]
  let fruits = ["apple", "banana", "orange"]
  let emptyList = []

  p $ "Numbers: " ++ show numbers
  p $ "First number: " ++ show (safeFirst numbers)
  p $ "Add 0 to front" ++ show (addToFront 0 numbers)
  p $ "Combine [1,2] and [3,4]:" ++ show (combine [1, 2] [3, 4])
  p $ "Fruits " ++ show fruits
