import React, { Component } from "react"

class Statefull extends Component {
  constructor(props) {
    super(props)

    this.state = {
      example: props.initialState,
    }
  }

  _change1 = () => {
    this.setState({
      example: "change 1",
    })
  }

  // for asynchronous cases (arrow function)
  _change2 = () => {
    this.setState((state, props) => ({
      example: "change 2",
    }))
  }

  // for asynchronous cases (regular function)
  _change3 = () => {
    this.setState(function(state, props) {
      return {
        example: "change 3",
      }
    })
  }

  render() {
    return (
      <section>
        <button onClick={this._change1}> change 1 </button>
        <button onClick={this._change2}> change 2 </button>
        <button onClick={this._change3}> change 3 </button>
        <h1> {this.state.example} </h1>
      </section>
    )
  }
}

function Wrapper() {
  return (
    <>
      <Statefull initialState={"The initial state"} />
    </>
  )
}

export default Wrapper
