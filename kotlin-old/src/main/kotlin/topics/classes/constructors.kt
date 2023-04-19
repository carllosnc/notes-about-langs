package com.example.topics.classes.constructors

// primary constructor
class Point(var x: Int, var y: Int){

    // secondary constructor
    constructor(x: String, y: String) : this(x.toInt(), y.toInt())
    constructor(x: Double, y: Double) : this(x.toInt(), y.toInt())

    init {
        println("Point created at ($x, $y)")
    }
}

//person class using initializer
class Person(val name: String, val age: Int) {
    init {
        println("Person created with name: $name and age: $age")
    }
}

fun main() {
    // anonymous object
    val point = object {
        val x = 1
        val y = 2
    }

    // use all constructors
    val point1 = Point(1, 2)
    val point2 = Point("3", "4")
    val point3 = Point(5.0, 6.0)

    // print points
    println(point1)
    println(point2)
    println(point3)
    println("point: (${point.x}, ${point.y})")

    //calling point class
    val person = Person("John", 21)
}
