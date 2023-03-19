package com.example.topics.controlflow

//function that return max value
fun max(a: Int, b: Int): Int {
    return if (a > b) a else b
}

fun whenExpression() {
    val x = 1

    //when expression works like a switch statement
    when (x) {
        1 -> println("x == 1")
        2 -> println("x == 2")
        else -> {
            println("x is neither 1 nor 2")
        }
    }
}

fun main() {
    println(max(1, 2))
    whenExpression()
}
