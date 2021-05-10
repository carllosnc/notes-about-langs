import React, { useReducer } from "react"

const initialState = { count: 0 }

function increment(state){
  return { count: state.count + 1 }
}

function decrement(state){
  return { count: state.count - 1 }
}

function reducer(state, action){
  switch (action.type) {
    case "increment":
      return increment(state)
    case "decrement":
      return decrement(state)
    default:
      throw new Error("Counter error.")
  }
}

export default function UseReducer(){
  const [ state, dispatch ] = useReducer(reducer, initialState)

  return (
    <div>
      <h1> Counter with useReducer </h1>
      <h1> { state.count } </h1>
      <button onClick={() => dispatch({ type: "increment" })}> Increment </button>
      <button onClick={() => dispatch({ type: "decrement" })}> Decrement </button>
    </div>
  )
}
