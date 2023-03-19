package com.example.topics.classes.inheritance

//primary constructor
class Point(var x: Int, var y: Int){
    //secondary constructor
    constructor(x: String, y: String) : this(x.toInt(), y.toInt())
    constructor(x: Double, y: Double) : this(x.toInt(), y.toInt())

    init {
        println("Point created at ($x, $y)")
    }
}


fun main() {

}