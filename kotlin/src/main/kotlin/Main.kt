package com.example

//make interface vehicle with name, year and brand
interface Vehicle {
    val name: String
    val year: Int
    val brand: String
    //print info
    fun printInfo() {
        println("Name: $name")
        println("Year: $year")
        println("Brand: $brand")
    }
}

//make class car
class Car(
    override val name: String,
    override val year: Int,
    override val brand: String,
) : Vehicle

//make class motorcycle
class Motorcycle(
    override val name: String,
    override val year: Int,
    override val brand: String,
) : Vehicle

//function that receives a vehicle and prints its info
fun printVehicleInfo(vehicle: Vehicle) {
    vehicle.printInfo()
}

fun main() {
    //create a car
    val car = Car("Civic", 2019, "Honda")
    //create a motorcycle
    val motorcycle = Motorcycle("CBR", 2019, "Honda")
    //print info
    printVehicleInfo(car)
    printVehicleInfo(motorcycle)
}
