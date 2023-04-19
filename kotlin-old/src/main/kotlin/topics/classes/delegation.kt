package com.example.topics.classes.delegation

//interface base
interface Base {
    fun print()
}
//implementation of base
class BaseImpl(val x: Int) : Base {
    override fun print() { print(x) }
}

fun main() {}
