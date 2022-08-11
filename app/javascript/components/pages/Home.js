import React, { Component } from 'react'
import { Nav, NavItem } from 'reactstrap'

export default class Home extends Component {
  render() {
    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    console.log("logged_in:", logged_in)
    console.log("current_user:", current_user)
    return (
      <div>
       {!logged_in && <h3>Welcome!</h3>}
       {!logged_in && (
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non accumsan cursus tristique parturient faucibus cras non amet lectus. Placerat netus viverra tincidunt sed enim varius volutpat sed. Commodo arcu mauris nisl malesuada tincidunt enim. Amet, mauris scelerisque morbi penatibus sodales scelerisque sed. Adipiscing purus aliquam dui mi, sit dui lorem sit mattis. Consequat nunc congue arcu tempor ut iaculis risus nunc consectetur.</p>
       )}
        <Nav>
        {!logged_in && (
          <NavItem>
                <a href={sign_in_route} className="nav-link">Sign In</a>
          </NavItem>
        )}
        {!logged_in && (
          <NavItem>
                <a href={new_user_route} className="nav-link">Sign Up</a>
          </NavItem>
        )}
        </Nav>

      {/*----------------------------------------------------------------------------------------------*/}

       {logged_in && <h3>Welcome!</h3>}
       {logged_in && (
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non accumsan cursus tristique parturient faucibus cras non amet lectus. Placerat netus viverra tincidunt sed enim varius volutpat sed. Commodo arcu mauris nisl malesuada tincidunt enim. Amet, mauris scelerisque morbi penatibus sodales scelerisque sed. Adipiscing purus aliquam dui mi, sit dui lorem sit mattis. Consequat nunc congue arcu tempor ut iaculis risus nunc consectetur.</p>
       )}
        <Nav>
        {logged_in && (
          <NavItem>
                <a href="/myListings" className="nav-link">My Listings</a>
          </NavItem>
        )}
        {logged_in && (
          <NavItem>
                <a href="/viewListings" className="nav-link">View Listings</a>
          </NavItem>
        )}
        </Nav>
      </div>
    )
  }
}


