//example of enum
enum CompassPoint {
    case north
    case south
    case east
    case west
}
var directionToHead: CompassPoint = CompassPoint.west
print(directionToHead)

//enum with switch
directionToHead = .south
switch directionToHead {
    case .north:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
}

//enum with raw value
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthsOrder = Planet.earth.rawValue
print(earthsOrder) // 3

//enum with raw value
enum CompassPoint2: String {
    case north, south, east, west
}
let sunsetDirection = CompassPoint2.west.rawValue
print(sunsetDirection) // west

//enum iterable
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

for beverage in Beverage.allCases {
    print(beverage)
}

//enum associated value
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
        print("QR code: \(productCode).")
}
