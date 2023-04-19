package com.example.topics.classes

//typealias for calc operation
typealias CalcOperation = (Int, Int) -> Int
typealias StringList = List<String>

val sum: CalcOperation = { x, y -> x + y }
val sub: CalcOperation = { x, y -> x - y }
val mul: CalcOperation = { x, y -> x * y }
val div: CalcOperation = { x, y -> x / y }

val list: StringList = listOf("a", "b", "c")

fun main() {

}