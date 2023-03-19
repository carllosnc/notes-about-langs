package com.example.topics.strings

val simpleString = "hello world";
val rawString = """
    function helloworld() {
        console.log("hello world");
    }
""".trimIndent()

val templateString = "hello $simpleString"

fun main() {

    println("hello world".length)
    println("hello world".uppercase())
    println("HELLO WORLD".lowercase())
    println("hello world".capitalize())
    println("hello world".decapitalize())
    println(" hello world ".trim())
    println(" hello world".trimStart())
    println("hello world ".trimEnd())
    println("hello world".substring(0..4))
    println("hello world".replace("world", "kotlin"))
    println("hello world".contains("world"))
    println("hello world".startsWith("hello"))
    println("hello world".endsWith("world"))
    println("hello world".split("--"))
    println("hello world".split(" "))
    println("hello world".split("-").joinToString(" "))
    println("hello world".split("-").joinToString(" ") { it.capitalize() })

}