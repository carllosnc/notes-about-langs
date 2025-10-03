evens :: [Int] -> [Int]
evens = filter even

odds :: [Int] -> [Int]
odds = filter odd

items :: [Int]
items = [1, 2, 3, 4, 5]

main = do
  let e = evens items
   in print e
  let o = odds items
   in print o
