/*
  Namespace

  https://www.typescriptlang.org/docs/handbook/namespaces.html
*/

/*---------------------------------------
  basic namespace
----------------------------------------*/
namespace Resources {
  export interface someInterface {
    name: string;
    value: number;
    list: string[];
  }

  export class entity {
    private _someValue: number;

    constructor(someValue: number) {
      this._someValue = someValue;
    }

    get someValue() {
      return this._someValue;
    }

    set someValue(newValue: number) {
      this._someValue = newValue;
    }
  }

  export const value = "some value";
  export const values: number[] = [1, 2, 3, 4, 5];

  export function method() {
    return "some function";
  }
}

/*---------------------------------------
  nested namespace
----------------------------------------*/
namespace Foo {
  export namespace Bar {
    export namespace Span {
      export const value = "hello world";
    }
  }
}

(function main() {
  console.log(Resources);
  console.log(Foo.Bar.Span.value);
})();

/*---------------------------------------
  example
----------------------------------------*/

namespace Calc {
  const number: number = 3.14;

  export function sum(a: number, b: number): number {
    return a + b;
  }

  export function sub(a: number, b: number): number {
    return a - b;
  }

  export function mult(a: number, b: number): number {
    return a * b;
  }

  export function div(a: number, b: number): number {
    return a / b;
  }
}

console.log(Calc);
