package com.example.topics.classes.inner

class OuterClass {
    private val x = 10
    private val y = 20

    inner class InnerClass {
        fun sum() = x + y
        fun sub() = x - y
        fun mul() = x * y
        fun div() = x / y
    }
}

fun main() {
    val outerClass = OuterClass()
    val innerClass = outerClass.InnerClass()

    println(innerClass.sum())
    println(innerClass.sub())
    println(innerClass.mul())
    println(innerClass.div())
}