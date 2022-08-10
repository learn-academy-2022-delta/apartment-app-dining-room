import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentNew from './pages/ApartmentNew'
import ApartmentEdit from './pages/ApartmentEdit'
import NotFound from './pages/NotFound'
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      apartments: [],
      
    }
  }


  createApartment = (listing) => {
    fetch("http://localhost:3000/apartments", {
      body: JSON.stringify(listing),
      headers:{
        "Content-Type": "application/json"
      },
      method: "POST",
      mode: "no-cors"
    })
    .then(response => response.json())
    .then(payload => this.setState({apartments:payload}))
    .catch(errors => console.log("New listing Error", errors))
  }
  

  render() {
    return (
      
        <Router>
          <Header {...this.props} />
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/apartmentindex" component={ApartmentIndex} />
            <Route path="/apartmentshow" component={ApartmentShow} />
            <Route path="/apartmentnew" render={()=>{
              return <ApartmentNew  createApartment = {this.createApartment} current_user={this.props.current_user} />
            }} />
            <Route path="/apartmentedit" component={ApartmentEdit} />
            <Route component={NotFound}/>
          </Switch>
        </Router>
        
        
  
    )
  }
}

export default App