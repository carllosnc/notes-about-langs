package com.example.topics

fun checkCast() {
    var st: String = "hello world";

    //check a type
    if(st is String){
        println("st is a String")
    }
}

// a simple cast
fun demo(x: Any){
    if(x is String){
        println(x.length)
    }
}

// unsafe cast operator
fun unsafeCast(x: Any){
    val y: String = x as String
    println(y.length)
}
