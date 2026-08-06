tell [] = "This list is empty"
tell [x] = "The list has one element: " ++ show x
tell [x, y] = "The list has two elements: " ++ show x ++ "and " ++ show y
tell (x : y : _) = "this list is long. The first two elements are: " ++ show x ++ " and " ++ show y

data Person = Person
  { name :: String,
    age :: Int,
    email :: String
  }
  deriving (Show, Eq)

data Point = Point Double Double

data Bool = False | True

data TrafficLight = Red | Yellow | Green

data PaymentMethod
  = Cash
  | CreditCard String Int
  | BankTransder String
  | Cryptocurrency String
  deriving (Show, Eq, Ord)

data Shape
  = Circle Double
  | Rectangle Double Double
  | Triangle Double Double Double

area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

p1 = Cash

p2 = CreditCard "8728 728 728 728" 283

p3 = BankTransder "Bank transfer number"

p4 = Cryptocurrency "crypto hash here, working with types here!"

john = Person "John" 30 "foo@gmail.com"

origin = Point 0.0 0.0

main = do
  print john
