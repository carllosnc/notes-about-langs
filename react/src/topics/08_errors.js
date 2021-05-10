import React, { Component } from "react"

/*
  https://reactjs.org/docs/error-boundaries.html
*/

function Foo() {
  // throw new Error('Component error')

  return (
    <section>
      <h1> Hello world!</h1>
    </section>
  )
}

class Errors extends Component {
  constructor(props) {
    super(props)

    this.state = { hasError: false }
  }

  static getDerivedStateFromError(error) {
    console.log(error)
    return { hasError: true }
  }

  componentDidCatch(error, info) {
    console.log("Catching error!")
  }

  render() {
    if (this.state.hasError) {
      return <h1> Something went wrong </h1>
    }

    return this.props.children
  }
}

function Wrapper() {
  return (
    <Errors>
      <Foo />
    </Errors>
  )
}

export default Wrapper
