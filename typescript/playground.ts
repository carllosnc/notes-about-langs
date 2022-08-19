type Data<T extends Object> = T[]

const foo: Data<{
  name: string
  age: number
  lang: string
}> = [
  {
    name: 'hello',
    age: 20,
    lang: 'javascript',
  },
  {
    name: 'word',
    age: 20,
    lang: 'php',
  },
]

console.log(foo)
