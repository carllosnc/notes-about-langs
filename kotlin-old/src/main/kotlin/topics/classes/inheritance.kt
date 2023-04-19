package com.example.topics.classes.inheritance

open class Person(
    private val name: String,
    private val age: Int,
){
    fun getName(): String {
        return name
    }
    fun setName(name: String): String {
        return this.name
    }
}

fun main() {

}