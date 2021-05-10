import React from "react"
import PropTypes from "prop-types"

/*
  https://reactjs.org/docs/typechecking-with-proptypes.html
*/

function Typechecking({ word, number, condition, action }){
  return (
    <section>
      {word}
      {number}
      {condition}
      {action()}
    </section>
  )
}

Typechecking.propTypes = {
  word: PropTypes.string,
  number: PropTypes.number,
  condition: PropTypes.bool,
  action: PropTypes.func,
}

Typechecking.defaultProps = {
  word: "Hello world!",
  number: 13,
  condition: true,
  action: () => {
    console.log("action!")
  },
}

export default Typechecking
