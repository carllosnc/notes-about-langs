module Functions

//function with no parameters
let hello () = printfn "Hello World"

//function with 1 parameter
let double (x: int) = x * 2

//function with 2 parameters
let add (x: int, y: int) = x + y

//function inside function
let add2 (x: int, y: int) =
    let adder = x + y
    adder

//function with 3 parameters
let add3 (x: int, y: int, z: int) = x + y + z

//a function can return multiple values
let add4 (x: int, y: int) = x + y, x * y
