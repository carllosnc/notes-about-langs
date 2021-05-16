/*
  Functions

  https://www.typescriptlang.org/docs/handbook/classes.html
  https://kentcdodds.com/blog/typescript-function-syntaxes
*/

/*---------------------------------------
  named functions
----------------------------------------*/
{
  function add(x: number, y: number): number{
    return x + y
  }
}

/*---------------------------------------
  anonymous functions
----------------------------------------*/
{
  let add = function(x: number, y: number): number{
    return x + y
  }
}

/*---------------------------------------
  optional and default parameters
----------------------------------------*/
{
  function buildName(firstName: string = 'John', lastName?: string){
    return `${firstName} ${lastName || ''}`
  }

  let name = buildName()
  console.log(name)
}

/*---------------------------------------
  rest parameters
----------------------------------------*/
{
  function sum(...values): number{
    return values.reduce((total, num) => total + num)
  }

  console.log(sum(1, 2, 3, 4, 5))
}

/*---------------------------------------
  immediately-invoked function
  expression (IIFE)
----------------------------------------*/
{
  (arg => {
    console.log(arg)
  })('Hello world');

  (function(arg){
    console.log(arg)
  })('Hello world!!!');
}
