var product = ("Ice Cream", 3.99)

// get element
product.0
product.1

// update value
product.0 = "Ice Cream Baru"

//destructure
let (name, price) = product

//tuple with label
var product = (name: "Ice Cream", price: 3.99)

// get element
product.name
product.price

// update value
product.name = "Ice Cream Baru"

// loop
for (key, value) in product {
    print("\(key) : \(value)")
}

// nested tuple
var product = (name: "Ice Cream", price: (3.99, 4.99))

// get element from nested tuple
product.name
product.price.0
product.price.1

// dictionary inside tuple
var product = (name: "Ice Cream", price: ["small": 3.99, "large": 4.99])

// get element from dictionary inside tuple
product.name
product.price["small"]
product.price["large"]


