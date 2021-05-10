/*
  Destructing
  https://javascript.info/destructuring-assignment
*/

// array: destructuring
{
  let arr = ["First", "Second"]

  let [first, second] = arr

  console.log(first, second)
}

// array: split array
{
  let [first, second] = "Hello world".split(" ")

  console.log(first, second)
}

// object: looping with .entries
{
  let user = {
    name: "john",
    age: 30
  }

  for(let [key, value] of Object.entries(user)){
    console.log(`${key}: ${value}`)
  }
}

// map: ...and the same for a map
{
  let user = new Map()
  user.set("name", "John")
  user.set("Age", 30)

  for( let [key, value] of user ){
    console.log(`${key} : ${value}`)
  }
}

// array: the rest '...'
{
  const arr = ["First", "Second"]
  const newArr = [...arr, "Third"]

  console.log(newArr[0])
  console.log(newArr[1])
  console.log(newArr[2])
}

// array: default values
{
  let [first, second = "foo"] = []

  console.log(first) // undefined
  console.log(second) // foo
}

// object: destructuring
{
  let options = {
    title: "menu",
    width: 100,
    height: 200
  }

  let = { title, width, height} = options

  console.log(title)
  console.log(width)
  console.log(height)
}

// object: the rest pattern '...'
{
  let options = {
    title: "menu",
    height: 200,
    width: 100
  }

  let {title, ...rest} = options

  console.log(title)
  console.log(width)
  console.log(height)
}

// smart function parameters
{
  function showMenu({ title = "menu", width = 200, height = 200}){
    console.log(`${title} ${width} ${height}`)
  }

  showMenu({ menu: "The menu", width: 500, height: 500})
}
