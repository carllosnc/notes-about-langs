package com.example

//example of class with getters and setters
data class Address(
    private val street: String,
    private val city: String,
    private val state: String,
    private val zip: String
)

fun main() {
    val address = Address(
        "street",
        "city",
        "state",
        "zip"
    )

    //copy address with new street
    val newAddress = address.copy(street = "new street")
}
