import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentNew from './pages/ApartmentNew'
import ApartmentEdit from './pages/ApartmentEdit'
import NotFound from './pages/NotFound'
import ProtectedApartmentIndex from './pages/ProtectedApartmentIndex'
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

  componentDidMount(){
    this.readApartment()
  }

  readApartment = () => {
    fetch("/apartments")
    .then(response => response.json())
    .then(apartmentArray => this.setState({apartments: apartmentArray}))
    .catch(errors => console.log("Apartment read errors:", errors))
  }

  createApartment = (listing) => {
    fetch("/apartments", {
      body: JSON.stringify(listing),
      headers:{
        "Content-Type": "application/json"
      },
      method: "POST"
      
    })
    .then(response => response.json())
    .then(() => this.readApartment())
    .catch(errors => console.log("New listing Error", errors))
  }

  render() {
    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    return (
        <Router>
         <Header {...this.props} />
         <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/apartmentindex" render={(props) => <ApartmentIndex apartments={this.state.apartments}/>} />
            <Route path="/mylistings" render={(props) => {
                let myListings = this.state.apartments.filter(apartment => apartment.user_id === current_user.id)
                return(
                <ProtectedApartmentIndex apartments={myListings} />)}} />
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