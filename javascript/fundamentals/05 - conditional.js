/*
  Conditional
  https://javascript.info/comparison
*/

// the if statement
{
  let year = 2015
  if(year === 2015){
    console.log("That's correct!")
    console.log("You're so smart!")
  }
}

// boolean conversion
{
  if(0) {
    //is falsy
  }
  if(1) {
    // is truthy
  }

  let year = 2015

  let cond = (year === 2015 )
  if(cond) {
    // ...
  }
}

// the else clause
{
  let year = 2015
  if(year == 2015){
    console.log("you guessed it right!")
  }else{
    console.log("how can you be so wrong?")
  }
}

// several conditions: "else if"
{
  let year = 2015
  if(year < 2015){
    console.log("too early ...")
  }else if(year > 2015){
    console.log("too late")
  }else {
    console.log("exactly")
  }
}

// conditional operator "?"
{
  let age = 17
  let acessAllowed = (age > 18) ? true : false
  console.log(acessAllowed) // false

  // the same
  let acessAllowed2 = age > 18
  console.log(acessAllowed2) // false
}

// multiple conditions"?"
{
  let age = 18
  let message =
    (age < 3) ? "Hi, baby!" :
    (age < 18) ? "Hello!" :
    (age < 100 ) ? "Greetings!" : "What an unusual age!"

  console.log(message)
}

// Non-traditional use of ‘?’
{
  true
    ? console.log("true")
    : console.log("false")
}