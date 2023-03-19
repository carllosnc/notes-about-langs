package com.example.topics.classes

interface IPerson {
    val name: String
    val lastname: String
    val age: Int

    val fullName: String
        get() = "$name $lastname"

    fun helloWorld() {
        println("Hello World")
    }
}

class Student(
    override val name: String,
    override val age: Int,
    override val lastname: String,
) : IPerson
