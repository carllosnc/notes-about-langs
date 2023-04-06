/*
Types

https://www.typescriptlang.org/docs/handbook/basic-types.html
*/

/*---------------------------------------
  boolean
----------------------------------------*/
{
  let isDone: boolean = false;
}

/*---------------------------------------
  number
----------------------------------------*/
{
  let decimal: number = 4;
  let hex: number = 0xf00d;
  let binary: number = 0b1010;
  let octal: number = 0o744;
}

/*---------------------------------------
  string
----------------------------------------*/
{
  let color: string = "blue";
  let literal: string = `The color is ${color}`;
}

/*---------------------------------------
  array
----------------------------------------*/
{
  let list1: number[] = [1, 2, 3];
  let list2: Array<number> = [1, 2, 3];
}

/*---------------------------------------
  tuple
----------------------------------------*/
{
  let x: [string] = ["Hello world"];

  let y: [string, string] = ["Hello", "world"];

  let z: [string, boolean, number] = ["Hello world", true, 42];

  let k: [string, number] = ["foo", 10];

  console.log(x instanceof Array);
  console.log(y instanceof Array);
  console.log(z instanceof Array);
}

/*---------------------------------------
  object types
----------------------------------------*/
{
  type Person = {
    name: string;
    age: number;
    lang: string;
  };

  const bob: Person = {
    name: "Bob",
    age: 20,
    lang: "typescript",
  };
}

/*---------------------------------------
  enum
----------------------------------------*/
{
  enum Color {
    Red,
    Green,
    Blue,
  }

  let Red: Color = Color.Red;
  let Green: Color = Color.Green;
  let Blue: Color = Color.Blue;

  console.log(Red, Green, Blue);
  console.log(Color[1], Color[2], Color[2]);
}

/*---------------------------------------
  any
----------------------------------------*/
{
  let notSure: any = 4;
  notSure = true;
  notSure = "hello world";

  let list: any[] = [1, true, "free"];
  list[1] = "Hello world";
}

/*---------------------------------------
  void
----------------------------------------*/
{
  let unusable: void = undefined;

  function fn1(): void {
    console.log("returning anything");
  }

  fn1();

  console.log(unusable);
}

/*---------------------------------------
  null and undefined
----------------------------------------*/
{
  let u: undefined = undefined;
  let n: null = null;
}

/*---------------------------------------
  never
----------------------------------------*/
{
  function error(message: string): never {
    throw new Error(message);
  }

  function fail(): never {
    return error("Something failed");
  }
}

/*---------------------------------------
  type assertion
----------------------------------------*/
{
  let someValue: any = "this is a string";
  console.log((<String>someValue).length);
  console.log((someValue as String).length);
}

/*---------------------------------------
  type alias
----------------------------------------*/
{
  type Name = string;
  type NameResolver = () => string;
  type NameOrResolver = Name | NameResolver;
  type Multiple = string | number | boolean;
  type Object = {
    first: String;
    second: Number;
  };

  const foo: Multiple = "hello world";
  const bar: Multiple = 42;
  const span: Multiple = true;

  function getName(n: NameOrResolver): Name {
    if (typeof n === "string") {
      return n;
    } else {
      return n();
    }
  }

  console.log(foo);
  console.log(bar);
  console.log(span);
}

/*---------------------------------------
  Literal types
----------------------------------------*/
{
  type Animal = "Dog" | "Cat" | "Bird";
  const bob: Animal = "Dog";
  console.log(bob);

  type Response = "Yes" | "No" | "Maybe";
  const myResponse: Response = "No";
  console.log(myResponse);
}
