package com.example.topics.classes.object_expression

interface Human {
    val name: String
    val age: Int
    fun showInfo(){
        println("name: $name, age: $age")
    }
}

//car class
class Car(val name: String, val year: Int){
    private val owner: Human = object : Human {
        override val name: String = "John"
        override val age: Int = 21
    }

    fun showOwner(){
        println("name: ${owner.name}, age: ${owner.age}")
    }
}


fun main() {
    val person = object : Human {
        override val name: String = "John"
        override val age: Int = 21
    }

    val hero = object : Human {
        override val name: String = "Batman"
        override val age: Int = 30
        val superpower: String = "Money"
    }

    val car = Car("BMW", 2020)

    car.showOwner()

    person.showInfo()
    hero.showInfo()
}

