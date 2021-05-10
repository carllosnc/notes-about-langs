import React, {useState} from "react"

export default function UseState(){
  const [count, setCount] = useState(0)

  function increment(){
    setCount(count + 1)
  }

  function decrement(){
    setCount(count - 1)
  }

  return (
    <div>
      <button onClick={increment}> + </button>
      <button onClick={decrement}> -  </button>
      <h1> Value: { count } </h1>
    </div>
  )
}

