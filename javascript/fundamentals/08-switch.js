/*
  The "switch" statement
  https://javascript.info/switch
*/

// The syntax
{
  let a = 2 + 2

  switch (a) {
    case 3:
      console.log('too small')
      break
    case 4:
      console.log('exactly!')
      break
    case 5:
      console.log('Too large')
      break
    default:
      console.log('i do not know such values')
  }
}

// Grouping of "case"
{
  let a = 2 + 3

  switch (a) {
    case 4:
      console.log('Right!!')
      break
    case 3:
    case 5:
      console.log('Wrong!')
      console.log('Why do not you take a match class?')
      break
    default:
      console.log('The result is strange. Really.')
  }
}

// Type matters
{
  let a = 1

  switch (a) {
    case '0':
    case '1':
      console.log('One or zero')
      break
    case '2':
      console.log('Two')
      break
    case 3:
      console.log('Never executes!')
      break
    default:
      console.log('An unknown value')
  }
}
