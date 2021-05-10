import React from "react"

// Default function
function Comp1() {
  return <section> Stateless component 1 </section>
}

// Arrow function
const Comp2 = () => {
  return <section> Stateless component 2 </section>
}

// Short arrow function
const Comp3 = () => <section> Stateless component 3 </section>

// Variable
const Comp4 = <section> Stateless component 4 </section>

// With props
const Comp5 = props => <section>{props.message}</section>

function StateLess() {
  return (
    <section>
      <Comp1 />
      <Comp2 />
      <Comp3 />
      {Comp4}
      <Comp5 message="hello world!" />
    </section>
  )
}

export default StateLess
