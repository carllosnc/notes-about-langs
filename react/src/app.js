import React, { Component } from "react"

// topics
import JSX from "./topics/00_jsx"
import Stateless from "./topics/01_stateless"
import Statefull from "./topics/02_statefull"
import Props from "./topics/03_props"
import LifeCycle from "./topics/04_life-cycle"
import Events from "./topics/05_events"
import Lists from "./topics/06_lists"
import Forms from "./topics/07_forms"
import Errors from "./topics/08_errors"
import Refs from "./topics/09_refs"
import Frags from "./topics/10_fragments"
import HOC from "./topics/11_hoc"
import Typecheking from "./topics/12_typechecking"
import Hooks from "./topics/13_hooks"
import UseState from "./topics/15_use-state"
import UseEffect from "./topics/16_use-effect"
import UseContext from "./topics/17_use-context"
import UseReducer from "./topics/18_use-reducer"

// packs
import Formik from "./packs/01_formik"
import StyledComponents from "./packs/02_styled-components"
import ReactHookForm from "./packs/03_react-hook-form"
import UnstatedNext from "./packs/04_unstated_next"
import Router from "./packs/05_router"
import ReactQuery from "./packs/06_react-query"

class App extends Component {
  render() {
    return (
      <>
        <section>
          {/* --- topics --- */}
          {/* <JSX/> */}
          {/* <Props/> */}
          {/* <Stateless/> */}
          {/* <Statefull/> */}
          {/* <Events/> */}
          {/* <LifeCycle/> */}
          {/* <Lists/> */}
          {/* <Forms/> */}
          {/* <Errors/> */}
          {/* <Refs/> */}
          {/* <Frags/> */}
          {/* <HOC/> */}
          {/* <Typecheking/> */}
          {/* <Hooks/> */}
          {/* <UseState/> */}
          {/* <UseEffect /> */}
          {/* <UseContext /> */}
          {/* <UseReducer /> */}

          {/* --- packs --- */}
          {/* <Formik/> */}
          {/* <StyledComponents/> */}
          {/* <ReactHookForm/> */}
          {/* <UnstatedNext/> */}
          {/* <Router/> */}
          <ReactQuery />
        </section>
      </>
    )
  }
}

export default App
