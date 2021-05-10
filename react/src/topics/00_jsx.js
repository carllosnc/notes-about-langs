import React from "react"

/*
  JSX
  https://reactjs.org/docs/introducing-jsx.html
  https://jsx.github.io/
*/

function JSX() {
  const value = "this is a value"
  const arr = [1, 2, 3, 4]

  return (
    <section>
      {(function() {
        return "a IFEE"
      })()}

      {// a simple expression
      console.log("expression")}

      {
        // interpolation
        "A simple interpolation"
      }

      {
        // interpolation with external value
        value
      }

      {// condition: ternary operator
      true ? "true" : "false"}

      {// basic loop
      arr.map(item => (
        <h1 key={item}> {item} </h1>
      ))}
    </section>
  )
}

export default JSX
