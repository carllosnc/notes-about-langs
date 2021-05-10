import React, { Component } from "react"

/*
  https://reactjs.org/docs/handling-events.html
*/

// Stateless Component
function Stateless() {
  const clickHandle = () => {
    console.log("Click")
  }

  const doubleClickHandle = () => {
    console.log("Double click")
  }

  const focusHandle = () => {
    console.log("Hover")
  }

  return (
    <section>
      <button
        onFocus={focusHandle}
        onDoubleClick={doubleClickHandle}
        onClick={clickHandle}
      >
        Event handle
      </button>
    </section>
  )
}

// Statefull component
class Statefull extends Component {
  constructor(props) {
    super(props)

    this.state = {
      value: "hello world!",
    }

    // bind, first method
    this.clickHandle = this.clickHandle.bind(this)
  }

  clickHandle() {
    console.log("click")

    this.setState({
      value: "olá, mundo!",
    })
  }

  // bind, second method
  doubleClickHandle = () => {
    console.log("double click")
  }

  // bind, third method
  mouseOverHandle() {
    console.log("mouse over")
  }

  render() {
    return (
      <section>
        <h1
          onClick={this.clickHandle}
          onDoubleClick={this.doubleClickHandle}
          onMouseOver={() => {
            this.mouseOverHandle()
          }}
        >
          {this.state.value}
        </h1>
      </section>
    )
  }
}

class Events extends Component {
  render() {
    return (
      <section>
        <Stateless />
        <Statefull />
      </section>
    )
  }
}

export default Events
