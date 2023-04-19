package learn.kotlin.topics.loops

val array = arrayOf(1, 2, 3, 4, 5)

fun main() {
    //for loop
    for (i in array) {
        println(i)
    }

    //for loop with index
    for (i in array.indices) {
        println(array[i])
    }

    //for loop with index and value
    for ((index, value) in array.withIndex()) {
        println("index: $index, value: $value")
    }

    //while loop
    var i = 0
    while (i < array.size) {
        println(array[i])
        i++
    }

    //do while loop
    var j = 0
    do {
        println(array[j])
        j++
    } while (j < array.size)

    //for loop with range
    for (i in 1..10) {
        println(i)
    }

    //for loop with range and step
    for (i in 1..10 step 2) {
        println(i)
    }

    //for loop with range and step
    for (i in 10 downTo 1 step 2) {
        println(i)
    }

    //for loop with range and step
    for (i in 10 downTo 1) {
        println(i)
    }

    //example with label and break
    loop@ for (i in 1..10) {
        for (j in 1..10) {
            println("i: $i, j: $j")
            if (i == 5 && j == 5) {
                break@loop
            }
        }
    }
}
