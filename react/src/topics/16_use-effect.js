import React, { useState, useEffect, useReducer } from "react"

function reducer(state, action){
  if(action.type === "new"){
    return { value: "New content" }
  }

  switch (action.type) {
    case "new":
      return { value: "New content" }
    default:
      return { value: state.value }
  }
}

export default function UseEffect(){
  const [content, setContent] = useState("Default content (use state)")
  const [state, dispatch] = useReducer(reducer, { value: "Default content (use reducer)"})

  useEffect(() => {
    setContent("new Content")
    dispatch({type: "new"})
  }, [setContent])

  return (
    <div>
      <p> {content} </p>
      <p> {state.value}</p>
    </div>
  )
}
