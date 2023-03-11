package com.example.topics

fun conditions() {
    val a = 1
    val b = 2
    val max: Int

    //a basic if
    if (a > b) {
        max = a
    } else {
        max = b
    }
}

fun asExpression() {
    val a = 1
    val b = 2
    val max = if (a > b) a else b

    val maxLimit = 1
    val maxOrLimit = if (maxLimit > a) maxLimit else if (a > b) a else b
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

fun forLoop() {
    val items = listOf("apple", "banana", "kiwi")

    //for loop one line
    for (item in items) println(item)
}
