function score(word){
  let total = 0
  const myWord = word.toUpperCase()

  const VALUES = [
    { letters: [...'AEIOULNRST'], value: 1 },
    { letters: [...'BCMP'], value: 3 },
    { letters: [...'FHVWY'], value: 4 },
    { letters: [...'DG'], value: 2 },
    { letters: [...'JX'], value: 8 },
    { letters: [...'QZ'], value: 10 },
    { letters: [...'K'], value: 5 },
  ]

  Array(...myWord).forEach(letter => {
    VALUES.forEach(schema => {
      if(schema.letters.includes(letter)){
        total += schema.value
        return true
      }
    })
  })

  return total
}
