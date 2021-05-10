import React, { Component } from "react"

/*
  https://reactjs.org/docs/forms.html
  https://reactjs.org/docs/uncontrolled-components.html
*/

// Controlled components
class Controlled extends Component {
  constructor() {
    super()

    this.state = {
      inputValue: "",
    }
  }

  _changeHandle = event => {
    const text = event.target.value

    this.setState({
      inputValue: text,
    })
  }

  render() {
    return (
      <form action="#">
        <div>
          <label> Input </label>
          <input
            placeholder="basic input"
            type="text"
            onChange={this._changeHandle}
          />
          <h1> {this.state.inputValue} </h1>
        </div>
      </form>
    )
  }
}

// Uncontrolled component
class Uncontrolled extends Component {
  constructor(props) {
    super(props)

    this.input = React.createRef()
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(event) {
    alert(`input value = ${this.input.current.value}`)
    event.preventDefault()
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          <span>Name</span>
          <input type="text" ref={this.input} />
          <input type="submit" value="Submit" />
        </label>
      </form>
    )
  }
}

function Forms() {
  return (
    <section>
      <Controlled />
      <Uncontrolled />
    </section>
  )
}

export default Forms
