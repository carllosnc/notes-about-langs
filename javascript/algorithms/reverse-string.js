const message = 'essa mensagem deve ser revertida'

function reverse(str) {
  return [...str].reduceRight((prev, next) => prev + next, '')
}

function reverse2(str) {
  let result = ''

  for (let i = str.length - 1; i >= 0; i--) {
    result += str[i]
  }

  return result
}

console.log(reverse(message))
console.log(reverse2(message))
