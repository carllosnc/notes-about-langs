var capitalCity = [
    "Indonesia": "Jakarta",
    "Japan": "Tokyo",
    "Korea": "Seoul",
    "China": "Beijing"
]

//typed collection
var capitalCity: [String: String] = [
    "Indonesia": "Jakarta",
    "Japan": "Tokyo",
    "Korea": "Seoul",
    "China": "Beijing"
]

//empty dictionary
var capitalCity = [String: String]()
var capitalCity: [String: String] = [:]

//add element
capitalCity["USA"] = "Washington"
capitalCity["England"] = "London"

//remove element
capitalCity.removeValue(forKey: "USA")

//count elements
capitalCity.count

//check if empty
capitalCity.isEmpty

//get element
capitalCity["Indonesia"]

//loop
for (country, city) in capitalCity {
    print("\(country) : \(city)")
}

//map
capitalCity.map { (country, city) -> String in
    return "\(country) : \(city)"
}

//filter
capitalCity.filter { (country, city) -> Bool in
    return country == "Indonesia"
}

//update value
capitalCity.updateValue("Jakarta Baru", forKey: "Indonesia")

//get keys
capitalCity.keys

//get values
capitalCity.values
