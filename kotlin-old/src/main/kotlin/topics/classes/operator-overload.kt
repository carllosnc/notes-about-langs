package com.example.topics.classes.operators

data class Point(val x: Int, val y: Int) {
    operator fun plus(other: Point): Point {
        return Point(x + other.x, y + other.y)
    }

    operator fun minus(other: Point): Point {
        return Point(x - other.x, y - other.y)
    }

    operator fun times(other: Point): Point {
        return Point(x * other.x, y * other.y)
    }

    operator fun div(other: Point): Point {
        return Point(x / other.x, y / other.y)
    }
}

fun main() {
    val p1 = Point(100, 200)
    val p2 = Point(30, 40)

    println(p1 + p2) // Point(x=40, y=60)
    println(p1 * p2) // Point(x=300, y=800)
    println(p1 - p2) // Point(x=-20, y=-20)
    println(p1 / p2) // Point(x=3, y=5)
}