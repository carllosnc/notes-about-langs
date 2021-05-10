import React, { useContext } from "react"

const themes = {
  blue: {
    foreground: "white",
    background: "blue",
    content: "Blue context"
  },
  red: {
    foreground: "white",
    background: "red",
    content: "Red context"
  },
  green: {
    foreground: "white",
    background: "green",
    content: "Green context"
  }
}

const ThemeContext = React.createContext(themes.blue)

function ThemedButton(){
  const theme = useContext(ThemeContext)

  return (
    <button style={{ padding: "20px", background: theme.background, color: theme.foreground }}>
      { theme.content }
    </button>
  )
}

function ContextBlue({ children }){
  return (
    <ThemeContext.Provider value={themes.blue}>
      { children }
    </ThemeContext.Provider>
  )
}

function ContextRed({ children }){
  return (
    <ThemeContext.Provider value={themes.red}>
      { children }
    </ThemeContext.Provider>
  )
}

function ContextGreen({ children }){
  return (
    <ThemeContext.Provider value={themes.green}>
      { children }
    </ThemeContext.Provider>
  )
}

export default function UseContext(){
  return (
    <div>
      <ContextGreen>
        <ThemedButton />
      </ContextGreen>

      <br/>

      <ContextRed>
        <ThemedButton />
      </ContextRed>

      <br/>

      <ContextBlue>
        <ThemedButton />
      </ContextBlue>
    </div>
  )
}
