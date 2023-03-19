package com.example.topics.classes.constructors

class Point(var x: Int, var y: Int){
    constructor(x: String, y: String) : this(x.toInt(), y.toInt())
    constructor(x: Double, y: Double) : this(x.toInt(), y.toInt())

    init {
        println("Point created at ($x, $y)")
    }
}

fun main() {

}