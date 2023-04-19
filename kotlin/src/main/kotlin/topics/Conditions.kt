package learn.kotlin.topics.conditions
fun main() {
    //if condition
    val a = 10
    val b = 20
    if (a > b) {
        println("a is greater than b")
    } else {
        println("b is greater than a")
    }

    //when condition
    val x = 10
    when (x) {
        1 -> println("x is 1")
        2 -> println("x is 2")
        3 -> println("x is 3")
        4 -> println("x is 4")
        5 -> println("x is 5")
        else -> println("x is not in range")
    }

    //ternary operator
    val y = if (a > b) a else b
    println("y is $y")

    //when condition with multiple conditions
    val z = 10
    when (z) {
        1, 2, 3, 4, 5 -> println("z is in range")
        else -> println("z is not in range")
    }

    //when condition with range
    val m = 10
    when (m) {
        in 1..5 -> println("m is in range")
        else -> println("m is not in range")
    }

    //when condition with string
    val n = "Kotlin"
    when (n) {
        "Java" -> println("n is Java")
        "Kotlin" -> println("n is Kotlin")
        else -> println("n is not in range")
    }

    //when condition with boolean
    val p = true
    when (p) {
        true -> println("p is true")
        false -> println("p is false")
    }

    //when condition with is operator
    val q = "Kotlin"
    when (q) {
        is String -> println("q is String")
        else -> println("q is not in range")
    }

    //when condition with not null
    val r: String? = null
    when (r) {
        null -> println("r is null")
        else -> println("r is not null")
    }
}