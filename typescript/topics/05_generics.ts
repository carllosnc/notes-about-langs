/*
  Generics

  https://www.typescriptlang.org/docs/handbook/generics.html
*/

/*---------------------------------------
  basic generics
----------------------------------------*/
{
  // typed
  function identity1(arg: number): number {
    return arg;
  }

  // general but losing the type
  function identity2(arg: any): any {
    return arg;
  }

  // for generic types
  function identity3<T>(arg: T): T {
    return arg;
  }

  let myString = identity3<string>("Hello world");
  let myNumber = identity3<number>(42);

  console.log(myString as string);
  console.log(myNumber as number);
}

/*---------------------------------------
  generic types
----------------------------------------*/
{
  function identity<T>(arg: T): T {
    return arg;
  }

  let myIdentity: <U>(arg: U) => U = identity;

  console.log(myIdentity<string>("Hello world!"));
  console.log(myIdentity<number>(42));
  console.log(myIdentity<boolean>(true));
}

/*---------------------------------------
  generic with interfaces
----------------------------------------*/
{
  interface GenericIdentityFn<T> {
    <T>(arg: T): T;
  }

  function id<T>(arg: T): T {
    return arg;
  }

  let myId: GenericIdentityFn<string> = id;
  let anotherId: GenericIdentityFn<number> = id;
}

/*---------------------------------------
  Generic classes
----------------------------------------*/
{
  class GenericNumber<T> {
    zeroValue: T;
    add: (x: T, y: T) => T;

    constructor(zeroValue: T, add: (x: T, y: T) => T) {
      this.zeroValue = zeroValue;
      this.add = add;
    }
  }

  function add(x: number, y: number): number {
    return x + y;
  }

  new GenericNumber<number>(10, add);
}

/*---------------------------------------
  generic and actions
----------------------------------------*/
{
  function fn<T extends number | string, K extends boolean>(
    arg: T,
    arg2: K
  ): T {
    console.log(arg2);
    return arg;
  }

  fn("Hello world", true);
  fn(10, false);
}

/*---------------------------------------
  generic with types alias
----------------------------------------*/
{
  type Person<T> = {
    name: string;
    age: number;
    lang: string;
    vehicle: T;
  };
}
