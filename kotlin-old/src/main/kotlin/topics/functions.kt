package com.example.topics.functions

//simple function
fun add(a: Int, b: Int): Int {
    return a + b
}

//function with default values
fun add(a: Int, b: Int, c: Int = 0): Int {
    return a + b + c
}

//function with multiples arguments
fun add(vararg numbers: Int): Int {
    var sum = 0
    for (number in numbers) {
        sum += number
    }
    return sum
}

//function as a single expression
fun add(a: Int, b: Double): Double = a + b

//function that return another function
fun add(a: Double, b: Double): (Double) -> Double {
    return { c -> a + b + c }
}

//lambda expression
fun lambdaExpressions(){
    val add: (Int, Int) -> Int = { a: Int, b: Int -> a + b }
    val sub: (Int, Int) -> Int = { a: Int, b: Int -> a - b }
    val mul: (Int, Int) -> Int = { a, b -> a * b }
    val div: (Int, Int) -> Int = { a, b -> a / b }
}

//function with two callbacks
fun twoCallbacks(callback1: (Int, Int) -> Unit, callback2: (Int) -> Unit) {
    callback1(1, 2)
    callback2(3)
}

//example infix function
infix fun Int.sum(a: Int): Int {
    return this + a
}

//infix function using strings
infix fun String.add(other: String): String {
    return this + other
}

fun main() {
    //overload functions
    println(add(1, 2))
    println(add(1, 2, 3))
    println(add(1, 2, 3, 4, 5))
    println(add(1, 2.0))
    println(add(1.0, 2.0)(3.0))

    //calling a function with two callbacks
    twoCallbacks({ a, b -> println(a + b) }){ println(it) }

    //call infix function
    println(1 sum 2)

    //call infix function using strings
    println("Hello" add "-" add "World")
}
