class Person {
  name: string;
  age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(
      `Hello, my name is ${this.name} and I am ${this.age} years old.`
    );
  }

  clone<T extends Person>(this: T, name: string, age: number): T {
    return new (this.constructor as new (name: string, age: number) => T)(
      name,
      age
    );
  }
}

let person = new Person("John", 30);

let person2 = person.clone("Jane", 25);

person2.greet();
