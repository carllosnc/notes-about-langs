package learn.kotlin.topics.lambdas

//add two numbers as lambda
val addTwoNumber = { a: Int, b: Int -> a + b }
val addWithReturnType: (Int, Int) -> Int = { a, b -> a + b }

//add two numbers with callback
fun addWithCallback(a: Int, b: Int, callback: (Int) -> Unit) {
    callback(a + b)
}

//type alias a function
typealias AddFunction = (Int, Int) -> Int
val addWithAlias: AddFunction = { a, b -> a + b }

//function that receiver a callback
fun doAction(action: () -> Unit) {
    action()
}

//add function with closure example
fun addWithClosure(a: Int): (Int) -> Int {
    return { b -> a + b }
}

fun main() {
    println(addTwoNumber(1, 2))
    println(addWithReturnType(1, 2))
    addWithCallback(1, 2) { println(it) }

    //use invoke operator
    println(addWithAlias(1, 2))
    println(addWithAlias.invoke(1, 2))

    //trailing lambda
    doAction { println("Hello") }

    //normal call
    doAction(action = { println("Hello") })

    //use closure
    val add1 = addWithClosure(1)
    println(add1(2))
    println(add1(10))
}
