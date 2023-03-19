package com.example.topics.classes

val person = object {
    val name = "John"
    val lastname = "Doe"
    val age = 30

    fun showInfo() {
        println("Name: $name")
        println("Lastname: $lastname")
        println("Age: $age")
    }
}

open class A(val x: Int){
    public open val y: Int = x
}

interface B{}

val ab: A = object : A(1), B{
    override val y = 15
}
