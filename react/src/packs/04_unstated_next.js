import React, { useState, useEffect } from "react"
import { createContainer } from "unstated-next"

function useCounter(initialState = 0){
  let [count, setCount] = useState(initialState)

  let decrement = () => setCount(count - 1)
  let increment = () => setCount(count + 1)

  return {
    count, decrement, increment
  }
}

let Counter = createContainer(useCounter)

function CounterDisplay(){
  let counter = Counter.useContainer()

  return (
    <div>
      <button onClick={counter.decrement}> - </button>
      <span> {counter.count} </span>
      <button onClick={counter.increment}> + </button>
    </div>
  )
}

// Component
function Observer(){
  let counter = Counter.useContainer()
  const { count } = counter

  let [style, setStyle] = useState("green")

  useEffect(() => {
    if(count <= 2) {setStyle("green")}
    if(count > 2) {setStyle("yellow")}
    if(count > 6) {setStyle("orange")}
    if(count > 8) {setStyle("red")}
    if(count > 10) {setStyle("grey")}
  }, [setStyle, count])

  return(
    <h1 style={{"backgroundColor": style}}> { count } </h1>
  )
}

export default function UnstatedNext(){
  return(
    <Counter.Provider initialState={0}>
      <CounterDisplay/>
      <Observer/>
    </Counter.Provider>
  )
}
