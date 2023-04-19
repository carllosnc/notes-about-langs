package learn.kotlin.topics.exceptions

fun main() {
    val a = 10
    val b = 0
    try {
        val c = a / b
        println("c is $c")
    } catch (e: Exception) {
        println("Exception is ${e.message}")
    } finally {
        println("Finally block is always executed")
    }

    //thrown an exception
    val d = 10
    val e = 0
    if (e == 0) {
        throw ArithmeticException("Divide by zero")
    } else {
        val f = d / e
        println("f is $f")
    }
}
