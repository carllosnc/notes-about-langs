import React from "react"

/*
  https://reactjs.org/docs/lists-and-keys.html
*/

const list = [1, 2, 3, 4, 5]

// Don't pass index for keys.
// Keys Must Only Be Unique Among Siblings

function Lists() {
  return (
    <section>
      {list.map((item, index) => (
        <h1 key={`${index}-${item}`}> {item} </h1>
      ))}
    </section>
  )
}

export default Lists
