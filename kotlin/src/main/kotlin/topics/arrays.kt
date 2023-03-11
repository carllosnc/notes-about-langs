package com.example.topics

fun basicArrays(){
    //array of numbers
    val numbers = arrayOf(1, 2, 3, 4, 5)
    //array of strings
    val strings = arrayOf("one", "two", "three", "four", "five")
    //array of booleans
    val booleans = arrayOf(true, false, true, false, true)
    //array of characters
    val chars = arrayOf('a', 'b', 'c', 'd', 'e')
    //array of doubles
    val doubles = arrayOf(1.0, 2.0, 3.0, 4.0, 5.0)
    //array of floats
    val floats = arrayOf(1.0F, 2.0F, 3.0F, 4.0F, 5.0F)
    //array of longs
    val longs = arrayOf(1L, 2L, 3L, 4L, 5L)
    //array of shorts
    val shorts = arrayOf(1.toShort(), 2.toShort(), 3.toShort(), 4.toShort(), 5.toShort())

    val mixed = arrayOf(1, "two", 3.0, '4', true)
}

fun typedArrays(){
    //array of numbers
    val numbers: Array<Int> = arrayOf(1, 2, 3, 4, 5)
    //array of strings
    val strings: Array<String> = arrayOf("one", "two", "three", "four", "five")
    //array of booleans
    val booleans: Array<Boolean> = arrayOf(true, false, true, false, true)
    //array of characters
    val chars: Array<Char> = arrayOf('a', 'b', 'c', 'd', 'e')
    //array of doubles
    val doubles: Array<Double> = arrayOf(1.0, 2.0, 3.0, 4.0, 5.0)
    //array of floats
    val floats: Array<Float> = arrayOf(1.0F, 2.0F, 3.0F, 4.0F, 5.0F)
    //array of longs
    val longs: Array<Long> = arrayOf(1L, 2L, 3L, 4L, 5L)
    //array of shorts
    val shorts: Array<Short> = arrayOf(1.toShort(), 2.toShort(), 3.toShort(), 4.toShort(), 5.toShort())
}
