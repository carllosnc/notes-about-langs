import React, { Component } from "react"

/*
  https://reactjs.org/docs/components-and-props.html
*/

// Basic usage with props
function Basic(props) {
  return (
    <section>
      {props.string}
      {props.number}
      {props.boolean}
      {props.function()}
      {props.object.name}
      {props.object.lang}
    </section>
  )
}

// Passing children as component
function ChildrenEx1(props) {
  return <section>{props.children}</section>
}

// Passing a function as child
function ChildrenEx2(props) {
  return <h1>{props.children(42)}</h1>
}

// Default props
class Person extends Component {
  render() {
    return <section> My name is {this.props.name} </section>
  }
}

Person.defaultProps = {
  name: "John Doe",
}

// Passing all props
function AllProps(props) {
  return (
    <div>
      <h1 {...props}> Passing all props </h1>
    </div>
  )
}

function Props() {
  return (
    <section>
      {/* Basic usage of props */}
      <Basic
        string="hello world!"
        number={42}
        boolean={true}
        function={() => {
          console.log("A simple function")
        }}
        object={{ name: "bob", lang: "javascript" }}
      />

      {/* Passing props as a component child */}
      <ChildrenEx1> {"Child as a string"} </ChildrenEx1>
      <ChildrenEx1> {10} </ChildrenEx1>

      {/*  Passing a function as a child */}
      <ChildrenEx2>
        {value => <div> children as a function - {value} </div>}
      </ChildrenEx2>

      {/* Passing all props */}
      <AllProps
        style={{ cursor: "pointer" }}
        onClick={() => {
          console.log("Hello world!")
        }}
      />

      <Person />
    </section>
  )
}

export default Props
