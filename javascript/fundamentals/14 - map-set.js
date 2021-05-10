/*
  Maps sets
  https://javascript.info/map-set
*/

// Map is a collection of keyed data items, just like an Object. But the main diffence is that map allow keys of any type.
{
  let map = new Map()

  map.set("1", "str1") // a string key
  map.set(1, "num1") // a numeric key
  map.set(true, "bool1") // a boolean key

  console.log(map.get(1)) // num1
  console.log(map.get('1')) // str1
  console.log(map.get(true)) // "bool1"
  console.log(map.size)
}

// map from object
{
  let map1 = new Map([
    ['1', 'str1'],
    [1, 'num1'],
    [true, 'bool1']
  ])

  console.log(map1)

  let map2 = new Map(Object.entries({
    name: "John",
    age: 30
  }))

  console.log(map2)
}

// Interaction over Map
{
  // for looping over a map, there are 3 methods:

  // map.keys() - returns an iterable for keys
  // map.values() - return an iterable for values
  // map.entries() - return an iterable for entries [key, value], it's use by default in for...of

  let recipeMap = new Map([
    ['cucumber', 500],
    ['tomatoes', 350],
    ['onion',    50]
  ])

  // iterate over keys (vegetables)
  for (let vegetable of recipeMap.keys()) {
    console.log(vegetable); // cucumber, tomatoes, onion
  }

  // iterate over values (amounts)
  for(let amount of recipeMap.values()){
    console.log(amount)
  }

  // iterate over [key, value] entries
  for(let entry of recipeMap.entries()){
    console.log(entry)
  }
}

// A set is a special type collection - "set of values" (whitout keys), where each value may occur only once
{
  let set = new Set()

  let john = { name: "John" }
  let pete = { name: "Pete" }
  let mary = { name: "Mary" }

  // visits, some users come multiple items
  set.add(john)
  set.add(pete)
  set.add(mary)
  set.add(john)
  set.add(mary)

  console.log(set.size)

  // The same methods Map has for iterators are also supported:

  // set.keys() – returns an iterable object for values,
  // set.values() – same as set.keys(), for compatibility with Map,
  // set.entries() – returns an iterable object for entries [value, value], exists for compatibility with Map.

  for(let user of set){
    console.log(user)
  }
}
