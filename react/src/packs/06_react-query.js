import React, { useState } from "react"
import { useQuery,  } from "react-query"

function getData(){
  return fetch(
    "https://api.github.com/repos/tannerlinsley/react-query"
  ).then((res) => res.json())
}

export default function ReactQuery(){
  const [ start, setStart ] = useState(false)
  const { isIdle, isLoading, error, data } = useQuery("repoData", getData, { enabled: start })

  if (isIdle) return (
    <button onClick={() => {setStart(true)}}>
      Start now
    </button>
  )

  if (isLoading) return "Loading...";
  if (error) return "An error has occurred: " + error.message;

  return (
    <div>
      <h1> { data.name } </h1>
      <p> { data.description } </p>
    </div>
  )
}

