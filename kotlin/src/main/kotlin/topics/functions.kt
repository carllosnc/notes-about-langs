package learn.kotlin.topics.functions

//basic function
fun add(a: Int, b: Int): Int {
    return a + b
}

//unit returning
fun printHello(): Unit {
    println("Hello")
}

//single expression function
fun sub(a: Int, b: Int) = a - b

//infinite args
fun sum(vararg numbers: Int): Int {
    return numbers.reduce { acc, i -> acc + i }
}

//functin with default value
fun multiply(a: Int, b: Int = 1) = a * b

//inflix function to div 2 numbers
infix fun Int.divBy(b: Int) = this / b

fun main() {
    //call functions
    println(add(1, 2))
    printHello()

    println(sum(1, 2, 3, 4, 5))

    //call with named parameters
    println(add(a = 1, b = 2))

    //call with default value
    println(multiply(1, 2))

    //call div infix function
    println(10 divBy 2)
}
