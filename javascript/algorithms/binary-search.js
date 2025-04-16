let steps = 0
let dumb_steps = 0

function binary_search(arr, target) {
  let low = 0
  let high = arr.length - 1

  while (low <= high) {
    steps++

    let mid = Math.floor((low + high) / 2)
    let guess = arr[mid]

    console.log(guess, target)

    if (guess === target) {
      return mid
    }

    if (guess > target) {
      high = mid - 1
    } else {
      low = mid + 1
    }
  }

  return null
}

function dumb_search(arr, target) {
  for (let i = 0; i < arr.length; i++) {
    dumb_steps++

    if (arr[i] === target) {
      return i
    }
  }
}

const names = [
  'Emma',
  'Liam',
  'Olivia',
  'Noah',
  'Ava',
  'Ethan',
  'Isabella',
  'Mason',
  'Sophia',
  'William',
  'Mia',
  'James',
  'Charlotte',
  'Benjamin',
  'Amelia',
  'Lucas',
  'Harper',
  'Henry',
  'Evelyn',
  'Alexander',
  'Abigail',
  'Sebastian',
  'Emily',
  'Jack',
  'Elizabeth',
  'Michael',
  'Avery',
  'Daniel',
  'Sofia',
  'Matthew',
  'Ella',
  'Joseph',
  'Madison',
  'David',
  'Scarlett',
  'Jackson',
  'Victoria',
  'Samuel',
  'Aria',
  'Gabriel',
  'Grace',
  'Carter',
  'Chloe',
  'Owen',
  'Camila',
  'Luke',
  'Penelope',
  'Isaac',
  'Riley',
  'Nathan',
  'Layla',
  'Caleb',
  'Lillian',
  'Ryan',
  'Nora',
  'Adam',
  'Zoey',
  'John',
  'Hannah',
  'Leo',
  'Brooklyn',
  'Isaiah',
  'Zoe',
  'Christian',
  'Sarah',
  'Andrew',
  'Leah',
  'Christopher',
  'Natalie',
  'Joshua',
  'Eva',
  'Dylan',
  'Lucy',
  'Lincoln',
  'Stella',
  'Elijah',
  'Aurora',
  'Thomas',
  'Maya',
  'Charles',
  'Skylar',
  'Josiah',
  'Savannah',
  'Adrian',
  'Bella',
  'Julian',
  'Claire',
  'Hudson',
  'Caroline',
  'Grayson',
  'Genesis',
  'Nicholas',
  'Aaliyah',
  'Aaron',
  'Kennedy',
  'Blake',
  'Sadie',
  'Austin',
  'Autumn',
  'Dominic',
  'Ruby',
  'Jonathan',
  'Aubrey',
  'Jordan',
  'Piper',
  'Xavier',
  'Nevaeh',
  'Jose',
  'Alice',
  'Jeremiah',
  'Violet',
  'Cameron',
  'Nova',
  'Connor',
  'Luna',
  'Colton',
  'Elena',
  'Theodore',
  'Naomi',
  'Robert',
  'Ellie',
  'Marcus',
  'Paisley',
  'Vincent',
  'Lydia',
  'Carlos',
  'Julia',
  'Jaxon',
  'Valentina',
  'Miles',
  'Sophie',
  'Kai',
  'Hazel',
  'Eric',
  'Quinn',
  'Archer',
  'Delilah',
  'Felix',
  'Ivy',
  'Louis',
  'Willow',
  'Lucas',
  'Dakota',
  'Phoenix',
]

const result = binary_search(names.sort(), 'Sophie')

console.log(steps)
