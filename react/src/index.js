import React from "react"
import ReactDOM from "react-dom"
import App from "./app.js"
import * as serviceWorker from "./serviceWorker"

ReactDOM.render(<App />, document.getElementById("root"))
serviceWorker.unregister()
