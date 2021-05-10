import React, { Component, Fragment } from "react"

/*
  https://reactjs.org/docs/fragments.html
*/

// Full syntax
function Frag1() {
  return (
    <React.Fragment>
      <h1> The content </h1>
    </React.Fragment>
  )
}

// Short syntax
function Frag2() {
  return (
    <>
      <h1> The content </h1>
    </>
  )
}

// Short syntax
function Frag3() {
  return (
    <Fragment>
      <h1> The content </h1>
    </Fragment>
  )
}

class Fragments extends Component {
  render() {
    return (
      <>
        <Frag1 />
        <Frag2 />
        <Frag3 />
      </>
    )
  }
}

export default Fragments
