res 0 = return ()
res n = do
  print ("hello world! " ++ show n)
  res (n - 1)

maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x : xs)
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs

replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n - 1) x

main :: IO ()
main = do
  res 10
  print (replicate' 5 5)
