package com.example.topics.collection

fun basicArrays(){
    val numbers = arrayOf(1, 2, 3, 4, 5)
    val strings = arrayOf("one", "two", "three", "four", "five")
    val booleans = arrayOf(true, false, true, false, true)
    val chars = arrayOf('a', 'b', 'c', 'd', 'e')
    val doubles = arrayOf(1.0, 2.0, 3.0, 4.0, 5.0)
    val floats = arrayOf(1.0F, 2.0F, 3.0F, 4.0F, 5.0F)
    val longs = arrayOf(1L, 2L, 3L, 4L, 5L)
    val shorts = arrayOf(1.toShort(), 2.toShort(), 3.toShort(), 4.toShort(), 5.toShort())
    val mixed = arrayOf(1, "two", 3.0, '4', true)
}

fun typedArrays(){
    val numbers: Array<Int> = arrayOf(1, 2, 3, 4, 5)
    val strings: Array<String> = arrayOf("one", "two", "three", "four", "five")
    val booleans: Array<Boolean> = arrayOf(true, false, true, false, true)
    val chars: Array<Char> = arrayOf('a', 'b', 'c', 'd', 'e')
    val doubles: Array<Double> = arrayOf(1.0, 2.0, 3.0, 4.0, 5.0)
    val floats: Array<Float> = arrayOf(1.0F, 2.0F, 3.0F, 4.0F, 5.0F)
    val longs: Array<Long> = arrayOf(1L, 2L, 3L, 4L, 5L)
    val shorts: Array<Short> = arrayOf(
        1.toShort(),
        2.toShort(),
        3.toShort(),
        4.toShort(),
        5.toShort()
    )
}

//example arrays
val numbers: Array<Int> = arrayOf(1, 2, 3, 4, 5)
val strings: Array<String> = arrayOf("one", "two", "three", "four", "five")
val numbers2: Array<Int> = Array(100) { i -> i + 1 }

//example of set collection
val numbersSet: Set<Int> = setOf(1, 2, 3, 4, 5)

//example of map collection
val numbersMap: Map<Int, String> = mapOf(
    1 to "one",
    2 to "two",
    3 to "three",
    4 to "four",
    5 to "five"
)

fun main() {
    //each
    numbers.forEach { println(it) }
    //map
    numbers.map { println(it) }
    //filter
    numbers.filter { it > 2 }.forEach { println(it) }
    //reduce
    println(numbers.reduce { acc, i -> acc + i })
    //multiple operations
    strings
        .map { it.uppercase() }
        .filter { it.startsWith("T") }
        .forEach { println(it) }
}
