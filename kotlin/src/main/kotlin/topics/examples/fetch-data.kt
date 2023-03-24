package com.example.topics.examples.fetch

data class Product(
    val id: Int,
    val title: String,
    val description: String,
    val price: Double,
    val discountPercentage: Int,
    val rating: Double,
    val stock: Int,
    val brand: String,
    val category: String,
    val thumbnail: String,
    val images: List<String>
){
    //serialize
    fun toJson(): String {
        return """{
            "id": $id,
            "title": "$title",
            "description": "$description",
            "price": $price,
            "discountPercentage": $discountPercentage,
            "rating": $rating,
            "stock": $stock,
            "brand": "$brand",
            "category": "$category",
            "thumbnail": "$thumbnail",
            "images": ${images.joinToString(prefix = "[", postfix = "]")}
        }"""
    }

    companion object {
        fun fromJson(json: String): Product {
            val id = json.substringAfter("id\":").substringBefore(",").trim().toInt()
            val title = json.substringAfter("title\":\"").substringBefore("\",").trim()
            val description = json.substringAfter("description\":\"").substringBefore("\",").trim()
            val price = json.substringAfter("price\":").substringBefore(",").trim().toDouble()
            val discountPercentage = json.substringAfter("discountPercentage\":").substringBefore(",").trim().toInt()
            val rating = json.substringAfter("rating\":").substringBefore(",").trim().toDouble()
            val stock = json.substringAfter("stock\":").substringBefore(",").trim().toInt()
            val brand = json.substringAfter("brand\":\"").substringBefore("\",").trim()
            val category = json.substringAfter("category\":\"").substringBefore("\",").trim()
            val thumbnail = json.substringAfter("thumbnail\":\"").substringBefore("\",").trim()
            val images = json.substringAfter("images\":").substringBefore("]").trim().split(",").map { it.trim() }
            return Product(id, title, description, price, discountPercentage, rating, stock, brand, category, thumbnail, images)
        }
    }
}

fun main() {
}
