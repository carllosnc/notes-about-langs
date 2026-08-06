densityTell density
  | density < 1.2 = "Wow! you'r going for a ride in the sky!"
  | density <= 1000.0 = "Have fun swimmnig, but watch out for sharks!"
  | otherwise = "If it's sink or swim, you're goig to sink."

max' a b | a > b = a | otherwise = b

myCompare a b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

main = do
  print (3 `myCompare` 2)