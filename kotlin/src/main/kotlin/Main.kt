package com.example
import com.example.topics.primitiveTypes
import com.example.topics.variableDeclaration
import com.example.topics.checkCast
import com.example.topics.conditions
import com.example.topics.asExpression

fun main() {
    val a: Int = 1

    var b: Int = try {
        if(a is Int) a else throw Exception("a is not an Int")
    } catch (e: Exception) {
        0
    }

    print(b)
}
