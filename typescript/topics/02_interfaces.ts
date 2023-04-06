/*
Interfaces

https://www.typescriptlang.org/docs/handbook/interfaces.html
*/

/*---------------------------------------
  basic interfaces
----------------------------------------*/
{
  interface People {
    name: string;
    lang: string;
  }

  function getPeople(who: People): People {
    return who;
  }

  const bob = getPeople({ name: "Bob", lang: "Typescript" });

  console.log(bob);
}

/*---------------------------------------
  optional properties
----------------------------------------*/
{
  interface Square {
    color: string;
    area: number;
    type?: string; // optional
    model?: string; // optional
  }

  function getSquare(obj: Square): Square {
    return obj;
  }

  const blackSquare = getSquare({ color: "Black", area: 100 });

  console.log(blackSquare);
}

/*---------------------------------------
  read only properties
----------------------------------------*/
{
  interface Point {
    readonly x: number;
    readonly y: number;
  }

  let origin: Point = { x: 10, y: 20 };
  // origin.x = 0
  // cannot assign to "x" because it is a read-only property
}

/*---------------------------------------
  excess property checks
----------------------------------------*/
{
  interface Square {
    color?: string;
    width?: number;
    [propName: string]: any;
    //[propName: number]: any
  }

  let redSquare: Square = {
    color: "red",
    opacity: 0.2,
    "10": "another property",
  };

  console.log(redSquare as Square);
}

/*---------------------------------------
  function types
----------------------------------------*/
{
  interface SearchFunc {
    (source: string, subString: string): boolean;
  }

  let mySearch: SearchFunc;

  mySearch = function (source1: string, subString1: string) {
    return true;
  };
}

/*---------------------------------------
  indexable types
----------------------------------------*/
{
  interface StringArray {
    [index: number]: string;
  }

  interface StringObject {
    [index: string]: string;
  }

  let myObject: StringObject = {
    "1": "first",
    "2": "second",
    "3": "third",
  };

  let myArray: StringArray;
  myArray = ["Bob", "Fred"];

  console.log(myArray[1]);
  console.log(myObject["1"]);
}

/*---------------------------------------
  class types
----------------------------------------*/
{
  interface ClockInterface {
    currentTime: Date;
    setTime(d: Date): void;
  }

  class Clock implements ClockInterface {
    currentTime: Date = new Date();
    constructor(h: number, m: number) {}

    setTime(d: Date): void {
      this.currentTime;
    }
  }
}

/*---------------------------------------
  extending interfaces
----------------------------------------*/
{
  interface Shape {
    color: string;
  }

  interface PenStroke {
    penWidth: number;
  }

  interface Square extends Shape, PenStroke {
    sideLength: number;
  }

  let square = <Square>{};
  square.color = "blue";
  square.sideLength = 10;
  square.penWidth = 5.0;
}

/*---------------------------------------
  hybrid types
----------------------------------------*/
{
  interface Counter {
    (start: number): string;
    interval: number;
    reset(): void;
  }

  function getCounter(): Counter {
    let counter = <Counter>function (start: number) {};
    counter.interval = 123;
    counter.reset = function () {};

    return counter;
  }

  let c = getCounter();
  c(10);
  c.reset();
  c.interval = 5.0;
}
