import React, {useState} from "react"

// Custom hook
function useCounter(){
  const [count, setCount] = useState(0)

  function increment(){
    setCount(count + 1)
  }

  function decrement(){
    setCount(count - 1)
  }

  return {
    count,
    increment,
    decrement
  }
}

// Component
function Counter(){
  const { count, increment, decrement } = useCounter()

  return(
    <section>
      <h1> Counter Component </h1>
      <h1 id="result">{count}</h1>
      <button id="increment" onClick={increment}> Increment </button>
      <button id="decrement" onClick={decrement}> Decrement </button>
    </section>
  )
}

export default Counter
