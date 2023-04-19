package learn.kotlin.topics.strings
import java.util.*

val helloWorld = "Hello World"

fun main() {
    // String interpolation
    println("helloWorld: String = $helloWorld")

    ///String methods
    println("helloWorld.length: Int = ${helloWorld.length}")
    println("helloWorld.contains(\"World\"): Boolean = ${helloWorld.contains("World")}")
    println("helloWorld.startsWith(\"Hello\"): Boolean = ${helloWorld.startsWith("Hello")}")
    println("helloWorld.endsWith(\"World\"): Boolean = ${helloWorld.endsWith("World")}")
    println("helloWorld.indexOf(\"World\"): Int = ${helloWorld.indexOf("World")}")
    println("helloWorld.substring(6): String = ${helloWorld.substring(6)}")
    println("helloWorld.substring(6, 11): String = ${helloWorld.substring(6, 11)}")
    println("helloWorld.toUpperCase(): String = ${helloWorld.uppercase(Locale.getDefault())}")
    println("helloWorld.toLowerCase(): String = ${helloWorld.lowercase(Locale.getDefault())}")
    println("helloWorld.trim(): String = ${helloWorld.trim()}")
    println("helloWorld.split(\" \"): List<String> = ${helloWorld.split(" ")}")
    println("helloWorld.replace(\"World\", \"Kotlin\"): String = ${helloWorld.replace("World", "Kotlin")}")
    println("helloWorld.replaceFirst(\"World\", \"Kotlin\"): String = ${helloWorld.replaceFirst("World", "Kotlin")}")
    println("helloWorld.removeRange(0, 6): String = ${helloWorld.removeRange(0, 6)}")
    println("helloWorld.removePrefix(\"Hello \"): String = ${helloWorld.removePrefix("Hello ")}")
    println("helloWorld.removeSuffix(\" World\"): String = ${helloWorld.removeSuffix(" World")}")
    println("helloWorld.removeSurrounding(\"Hello \", \" World\"): String = ${helloWorld.removeSurrounding("Hello ", " World")}")
}
