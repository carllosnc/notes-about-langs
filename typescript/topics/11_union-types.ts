/*
  Union types

  https://www.tutorialspoint.com/typescript/typescript_union.htm
*/

/*---------------------------------------
  basic unions
----------------------------------------*/
{
  let value: string | number | boolean
  value = "hello world"
  value = 42
  value = true
}

/*---------------------------------------
  union type and function parameter
----------------------------------------*/
{
  function disp(name: string | string[]){
    if(typeof name == "string") {
      console.log(name)
    }else {
      let i

      for(i = 0; i<name.length; i++){
        console.log(name [i])
      }
    }
  }

  disp('Mark')
  disp(['Mask', 'Tom', 'Mary', 'John'])
}

/*---------------------------------------
  union types and array
----------------------------------------*/
{
  let arr: number[] | string[]

  arr = [1, 2, 3]
  arr.forEach(item => {
    console.log(item)
  })

  arr = ['1', '2', '3']
  arr.forEach(item => {
    console.log(item)
  })
}