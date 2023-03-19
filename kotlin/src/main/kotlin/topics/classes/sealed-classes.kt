package com.example.topics.classes.sealed

//sealed class
sealed class Expr {
    class Const(val number: Double) : Expr()
    class Sum(val e1: Expr, val e2: Expr) : Expr()
    object NotANumber : Expr()
}

//sealed class result with success and failure subclasses
sealed class Result {
    class Success(val msg: String) : Result()
    class Failure(val error: Exception) : Result()
}

//process result function
fun processResult(result: Result) {
    when (result) {
        is Result.Success -> println(result.msg)
        is Result.Failure -> println(result.error)
    }
}

fun main() {
    //using sealed class
    val const = Expr.Const(1.0)
    val sum = Expr.Sum(Expr.Const(1.0), Expr.Const(2.0))
    val nan = Expr.NotANumber

    println(const)
    println(sum)
    println(nan)

    //call process result function
    processResult(Result.Success("Success"))
    processResult(Result.Failure(Exception("Error")))
}
