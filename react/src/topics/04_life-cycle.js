import React, { Component } from "react"

/*
  https://reactjs.org/docs/state-and-lifecycle.html
*/

class Example extends Component {
  componentDidMount() {
    // throw new Error('Component Error!')
  }

  render() {
    return <section> ... </section>
  }
}

class LifeCycle extends Component {
  componentWillMount() {
    console.log("Will mount")
  }

  componentDidMount() {
    console.log("Component mounted")
  }

  componentWillUnmount() {
    console.log("Component will mount")
  }

  componentWillUpdate() {
    console.log("Component will update")
  }

  componentDidUpdate() {
    console.log("Component updated")
  }

  // Called when the component my be receiving new props
  componentWillReceiveProps(nextProps) {
    console.log("Component receiver props", nextProps)
  }

  // Catches exerptions generated in descendant components
  componentDidCatch() {
    console.log("Component did catch")
  }

  render() {
    return (
      <section>
        <Example />
        <h1> {this.props.name} </h1>
      </section>
    )
  }
}

class Wrapper extends Component {
  constructor(props) {
    super(props)

    this.state = {
      value: "life cycle component",
    }
  }

  _clickHandle = () => {
    this.setState({
      value: "another name",
    })
  }

  render() {
    return (
      <section>
        <h1 onClick={this._clickHandle}> Click me! </h1>
        <LifeCycle name={this.state.value} />
      </section>
    )
  }
}

export default Wrapper
