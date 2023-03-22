package com.example.topics

//add two numbers
fun add(a: Int?, b: Int?): Int {
    if (a == null || b == null) {
        throw IllegalArgumentException("One of the arguments is null")
    }else {
        return a + b
    }
}

fun main() {
    try {
        println(add(1, 2))
        println(add(null, 2))
    } catch (e: IllegalArgumentException) {
        println(e.message)
    }

    val person = object {
        val name = "John"
        val age = 25
        val lang: String? = null
    }

    if(person.lang !== null ) println(person.lang) else println("No language")

    //safe call
    println(person.lang?.uppercase())
    //elvis operator
    println(person.lang?.uppercase() ?: "No language")
    //non-null assertion operator
    println(person.name!!.uppercase())
    //safe cast for name as string
    println(person.name as? String)
    //collection of nullable values
    val nullableList: List<Int?> = listOf(1, 2, null, 4)
    //filter out null values
    val intList: List<Int> = nullableList.filterNotNull()
    println(intList)

}