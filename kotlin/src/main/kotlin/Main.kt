package com.example

open class Person(val name: String, val age: Int){
    open fun sayHello(){
        println("Hello, my name is $name")
    }
}

class Student (name: String, age: Int, val grade: Int) : Person(name, age){
    override fun sayHello(){
        super.sayHello()
        println("Hello, my name is $name and I am in grade $grade")
    }
}

fun main() {
    val student = Student("John", 15, 10)
    student.sayHello()
}
