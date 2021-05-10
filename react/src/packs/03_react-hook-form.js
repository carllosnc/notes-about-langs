import React from "react"
import { useForm } from "react-hook-form"

function ReactHookForm(){
  const { register, handleSubmit, errors } = useForm()

  function submit(data){
    console.log(data)
  }

  return(
    <form onSubmit={handleSubmit(submit)}>
      <label htmlFor="name">
        <span> Name </span>
        <input
          name="name"
          defaultValue=""
          ref={register({ required: true })}
          type="text"
          id="name" />
      </label>

      <br/>

      {
        errors.name &&
        <div style={{color: "red"}}> <b>Required</b> </div>
      }

      <label htmlFor="email">
        <span> Email </span>
        <input
          name="email"
          ref={register({ required: true })}
          type="text"
          id="email" />
      </label>

      <br/>

      {
        errors.email &&
        <div style={{color: "red"}}> <b>Required</b> </div>
      }

      <br/>

      <button type="submit"> Submit the form </button>
    </form>
  )
}

export default ReactHookForm
