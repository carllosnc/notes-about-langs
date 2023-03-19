package com.example

//array of objects
val objects: Array<Any> = arrayOf(1, "two", 3.0, '4', true)

fun main() {
    //it's a callback
    objects.forEach { println(it) }
}

