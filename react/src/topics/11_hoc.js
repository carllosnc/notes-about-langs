import React, { Component } from "react"

/*
  https://reactjs.org/docs/higher-order-components.html
*/

/*
  A higher-order component is a function that takes
  a component and returns a new component
*/

function Title(props) {
  return (
    <>
      <h1 {...props}> {props.children} </h1>
    </>
  )
}

// Get a component
function TitlePlus(Title) {
  // Returning a new component
  return class extends Component {
    constructor(props) {
      super(props)

      this.state = {
        name: "a simple title (click me to change)",
      }
    }

    _clickHandle = () => {
      this.setState({
        name: "another title",
      })
    }

    render() {
      return (
        <>
          <Title onClick={this._clickHandle}>{this.state.name}</Title>
        </>
      )
    }
  }
}

// Creating the new title component
const NewTitle = TitlePlus(Title)

class HOC extends Component {
  render() {
    return (
      <section>
        <NewTitle />
      </section>
    )
  }
}

export default HOC
