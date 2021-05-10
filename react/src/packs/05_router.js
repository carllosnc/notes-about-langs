import React from "react"
import styled from "styled-components"
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useLocation,
  useParams
} from "react-router-dom"

const Menu = styled.div`
  border: solid red 1px;
  display: flex;
  justify-content: space-between;
  width: 1000px;
`

const MenuItem = styled(Link)`
  background-color: red;
  color: white;
  font-weight: bold;
  text-align: center;
  padding: 10px;
  font-family: sans-serif;
  width: 100%;
  margin: 5px;
`

function Home() {
  return <h2>Home</h2>;
}

function About() {
  return <h2>About</h2>;
}

function Users() {
  const {id} = useParams()

  console.log(id)

  return <h2>Users</h2>;
}

function NotFound(){
  const location = useLocation()

  return (
    <h1> Page not found -> { location.pathname } </h1>
  )
}

function Routing(){
  return(
    <Router>
      <Menu>
        <MenuItem to="/">Home</MenuItem>
        <MenuItem to="/about">About</MenuItem>
        <MenuItem to="/users/10">Users</MenuItem>
      </Menu>

      <section>
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>

          <Route path="/about">
            <About />
          </Route>

          <Route path="/users/:id">
            <Users />
          </Route>

          <Route path="*">
            <NotFound />
          </Route>
        </Switch>
      </section>
    </Router>
  )
}

export default Routing
