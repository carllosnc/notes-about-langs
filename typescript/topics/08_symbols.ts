/*
  Symbols

  https://www.typescriptlang.org/docs/handbook/symbols.html

  Starting with ECMAScript 2015, symbol is a primitive data type,
  just like number and string.
*/

/*---------------------------------------
  basic declaration
----------------------------------------*/
{
  let sym = Symbol();
  let sym2 = Symbol("key");

  console.log(sym, sym2);
}

/*---------------------------------------
  symbols are immutable, and unique
----------------------------------------*/
{
  let sym1 = Symbol("key");
  let sym2 = Symbol("key");

  console.log(sym1 === sym2); // false
}

/*---------------------------------------
  Just like strings, symbols can be
  used as keys for object properties
----------------------------------------*/
{
  const sym = Symbol();

  let obj = {
    [sym]: "value",
  };

  console.log(obj[sym]);
}

/*---------------------------------------
  Symbols can also be combined with
  computed property declarations to
  declare object properties and class
  member
----------------------------------------*/
{
  const getClassNameSymbol = Symbol();

  class C {
    [getClassNameSymbol]() {
      return "C";
    }
  }

  let c = new C();
  let className = c[getClassNameSymbol]();

  console.log(className);
}
