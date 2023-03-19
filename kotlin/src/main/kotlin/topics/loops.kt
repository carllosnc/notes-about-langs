package com.example.topics.loops

//list of numbers
val list = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
val range = 1..10
val range2 = 'a'..'z'

fun main() {
    //example of a for loop
    for (i in range) println(i)

    //example of a for loop
    range.forEach { println(it) }
    range2.forEach { println(it) }

    //example of a while loop
    var x = 0
    while (x < 10) {
        println(x)
        x++
    }
}
