/*
  Iterators

  https://www.typescriptlang.org/docs/handbook/iterators-and-generators.html
*/

/*---------------------------------------
  array
----------------------------------------*/
{
  let someArray = [1, 'string', false]

  // returning all keys
  for (let keys in someArray) {
    console.log(keys)
  }

  // returning values
  for (let values of someArray) {
    console.log(values)
  }
}

/*---------------------------------------
  set
----------------------------------------*/
{
  let pets = new Set(['Cat', 'Dog', 'Hamster'])
  pets['species'] = 'mammals'

  for (let pet in pets) {
    console.log(pet)
  }

  for (let pet of pets) {
    console.log(pet)
  }
}
