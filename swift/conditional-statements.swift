let a = 5

// if statement
if a < 10 {
    print("a is less than 10")
} else {
    print("a is greater than or equal to 10")
}

// if-else if-else statement
if a < 10 {
    print("a is less than 10")
} else if a < 20 {
    print("a is less than 20")
} else {
    print("a is greater than or equal to 20")
}

// switch statement
switch a {
  case 0:
      print("a is 0")
  case 1:
      print("a is 1")
  case 2:
      print("a is 2")
  case 3:
      print("a is 3")
  default:
      print("a is greater than 4")
}

//ternary conditional operator
let b = a < 10
        ? "a is less than 10"
        : "a is greater than or equal to 10"

