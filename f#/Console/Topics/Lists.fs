module Lists

//this is a list of integers
let ex1 = [ 1; 2; 3; 4; 5 ]

//this is a lista that uses the range operator
let ex2 = [ 1..10 ]

//this is a list that uses the range operator with a step
let ex3 = [ 1..2..10 ]

//this is a list that uses a comprehension
let ex4 = [ for i in 1..10 -> i * i ]
