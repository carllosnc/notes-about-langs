//rectangle implementation
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    //associated function (not tied to an instance)
    fn new(width: u32, height: u32) -> Rectangle {
        Rectangle { width, height }
    }

    //method (takes &self)
    fn area(&self) -> u32 {
        self.width * self.height
    }
}

//implementation a trait
trait Printable {
    fn print(&self);
}

struct Person {
    name: String,
    age: u32,
}

impl Printable for Person {
    fn print(&self) {
        println!("Name: {}, Age: {}", self.name, self.age);
    }
}

fn main() {
    let rect = Rectangle::new(10, 20);
    let person = Person {
        name: String::from("Alice"),
        age: 30,
    };

    println!("Area: {}", rect.area());
    person.print();
}
