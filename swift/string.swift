//simple string
var str = "Hello, playground"

//concatenation
var str1 = "Hello"
var str2 = "World"
var str3 = str1 + " " + str2

//string interpolation
var name = "John"
var age = 25
var message = "My name is \(name) and I am \(age) years old."

//multiline string
var str4 = """
This is a multiline string.
It can contain multiple lines.
"""

//unicode
var heart = "\u{1F496}"

//empty string
var emptyString = ""

//check if string is empty
if emptyString.isEmpty {
    print("String is empty")
}

//string length
var str5 = "Hello, World!"
print("Length of str5 is \(str5.count)")

//accessing characters
var str6 = "Hello, World!"
print(str6[str6.startIndex])
print(str6[str6.index(before: str6.endIndex)])
print(str6[str6.index(after: str6.startIndex)])
print(str6[str6.index(str6.startIndex, offsetBy: 7)])

//inserting and removing
var str7 = "Hello"
str7.insert("!", at: str7.endIndex)
print(str7)
str7.remove(at: str7.index(before: str7.endIndex))
print(str7)

//substring
var str8 = "Hello, World!"
let index = str8.firstIndex(of: ",") ?? str8.endIndex
let newStr = str8[..<index]
let newStr2 = str8[index...]

//compare strings
var str9 = "Hello"
var str10 = "Hello"
if str9 == str10 {
    print("Strings are equal")
}

//prefix and suffix
var str11 = "Hello, World!"
if str11.hasPrefix("Hello") {
    print("String starts with Hello")
}
if str11.hasSuffix("World!") {
    print("String ends with World!")
}

//uppercase and lowercase
var str12 = "Hello, World!"
print(str12.uppercased())
print(str12.lowercased())

//replacing
var str13 = "Hello, World!"
print(str13.replacingOccurrences(of: "Hello", with: "Hi"))

//splitting
var str14 = "Hello, World!"
print(str14.split(separator: ","))
print(str14.split(separator: ",", maxSplits: 1))
print(str14.split(separator: ",", omittingEmptySubsequences: false)



