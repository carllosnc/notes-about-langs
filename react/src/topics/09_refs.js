import React, { Component } from "react"

/*
  https://reactjs.org/docs/refs-and-the-dom.html
*/

// Acessing refs (Class component)
class Text extends Component {
  constructor(props) {
    super(props)

    this.textRef = React.createRef()
  }

  _changeText = () => {
    const text = this.textRef.current

    // style
    text.style.color = "white"
    text.style.padding = "10px"
    text.style.textAlign = "center"
    text.style.fontWeight = "bold"
    text.style.border = "solid black 2px"
    text.style.backgroundColor = "red"
    text.style.textTransform = "uppercase"

    // content
    text.innerText = "Another text"
  }

  render() {
    return (
      <section>
        <p ref={this.textRef}>A simple text</p>
      </section>
    )
  }
}

class Refs extends Component {
  constructor(props) {
    super(props)

    this.title = React.createRef()
    this.text = React.createRef()
  }

  componentDidMount() {
    // get DOM element
    const title = this.title.current

    title.style.textTransform = "uppercase"
    title.style.backgroundColor = "black"
    title.style.color = "white"
    title.style.textAlign = "center"
    title.style.padding = "10px"
    title.innerText = "Setting the title"

    // Acessing [Text Component] method
    this.text.current._changeText()
  }

  render() {
    return (
      <section>
        <h1 ref={this.title}> Working with refs </h1>
        <Text ref={this.text} />
      </section>
    )
  }
}

export default Refs
