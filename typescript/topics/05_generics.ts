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
    return arg
  }

  // general but losing the type
  function identity2(arg: any): any {
    return arg
  }

  // for generic types
  function identity3<T>(arg: T): T {
    return arg
  }

  let myString = identity3<string>('Hello world')
  let myNumber = identity3<number>(42)

  console.log(myString as string)
  console.log(myNumber as number)
}

/*---------------------------------------
  generic types
----------------------------------------*/
{
  function identity<T>(arg: T): T {
    return arg
  }

  let myIdentity: <U>(arg: U) => U = identity

  console.log(myIdentity<string>('Hello world!'))
  console.log(myIdentity<number>(42))
  console.log(myIdentity<boolean>(true))
}

/*---------------------------------------
  generic with interfaces
----------------------------------------*/
{
  interface GenericIdentityFn<T>{
    <T>(arg: T): T
  }

  function id<T>(arg: T): T{
    return arg
  }

  let myId: GenericIdentityFn<string> = id
  let anotherId: GenericIdentityFn<number> = id
}

/*---------------------------------------
  Generic classes
----------------------------------------*/
{
  class GenericNumber<T> {
    zeroValue: T
    add: (x: T, y: T) => T
  }

  let myGenericNumber = new GenericNumber<number>()
  myGenericNumber.zeroValue = 0
  myGenericNumber.add = function (x, y) { return x + y }
}

/*---------------------------------------
  generic and actions
----------------------------------------*/

{
  function fn<
    T extends number | string,
    K extends boolean
  >(arg: T, arg2: K): T{
    return arg
  }

  fn("Hello world", true)
  fn(10, false)
}
