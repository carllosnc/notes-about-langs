// the scope
// the scope is a policy that manages the accessibility of variables

{
  // scope 1
  let foo = 'hello world '
}

// block scope with var
{
  var scope0 = 'scope0'
  console.log(scope0, scope1, scope2, scope3)

  if (true) {
    var scope1 = 'scope1'

    if (true) {
      var scope2 = 'scope2'

      if (true) {
        var scope3 = 'scope3'
      }
    }
  }

  // scope0, undefined, undefined, undefined
}

// block scope with let/const
{
  let scope0 = 'scope0'

  console.log(scope0, scope1, scope2, scope3)

  if (true) {
    let scope1 = 'scope1'

    if (true) {
      let scope2 = 'scope2'

      if (true) {
        let scope3 = 'scope3'
      }
    }
  }

  // error
}
