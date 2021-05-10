import React from "react"
import styled, { css, keyframes } from "styled-components"

// Creating a component
const Button1 = styled.button`
  background: red;
  border: none;
  color: white;
  padding: 5px 10px 5px 10px;
  border-radius: 3px;
  cursor: pointer;
  transition: all 0.3s linear 0s;

  &:hover {
    background-color: black;
  }
`

const Block = styled.div`
  border: solid black 1px;
  padding: 20px;
  margin: 0 0 20px 0;
`

// Working with props
const Button2 = styled.button`
  background-color: black;
  border: none;
  color: white;
  padding: 10px;
  margin-right: 10px;
  border-radius: 3px;
  cursor: pointer;

  ${props =>
    props.primary &&
    css`
      background-color: blue;
      color: white;
    `}
`

// Extending styles
const Button3 = styled(Button1)`
  background: green;

  &:hover {
    background: red;
  }
`

// Animations
const rotate = keyframes`
  from {
    transform: rotate(0deg)
  }

  to {
    transform: rotate(360deg)
  }
`

const Rotate = styled.div`
  width: 100px;
  height: 30px;
  border: solid black 5px;
  animation: ${rotate} 2s linear infinite;
  background: red;
  font-size: 1.2em;
`

function StyledComponents() {
  return (
    <section>
      <Block>
        <Button1> Styled button. </Button1>
      </Block>

      <Block>
        <Button2> Basic button. </Button2>
        <Button2 primary> Basic button (primary). </Button2>
      </Block>

      <Block>
        <Button3>Button extended</Button3>
      </Block>

      <Block>
        <Rotate />
      </Block>
    </section>
  )
}

export default StyledComponents
