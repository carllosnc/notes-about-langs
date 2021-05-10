/*
  Symbol type
  https://javascript.info/symbol
*/

// symbol
{
  // symbol value represents a unique identifier

  let id = Symbol('id')
  let id2 = Symbol('id')

  console.log(id == id2) //false
  console.log(id === id2) //false
}

// hidden properties
{
  let user = { name: "John"}
  let id = Symbol("id")

  user[id] = "ID value"

  console.log(user[id])
}

// Symbols in a literal
{
  let id = Symbol("id")

  let user = {
    name: "John",
    [id]: 123
  }

  console.log(user[id])
}