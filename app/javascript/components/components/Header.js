import React, { Component } from 'react'
import { Nav, NavItem } from 'reactstrap'

class Header extends Component {
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
      <>
        
        <Nav className={"header"}>

          {/* Home page link for all users */}
          {
            <NavItem>
              <a href='/' className="nav-link">Home</a>
            </NavItem>
          }


          {/* Apartment index link for all users */}
          {
            <NavItem>
              <a href='/apartmentindex' className="nav-link">View Listings</a>
            </NavItem>
          }

          {/* Sign in link for users not logged in */}
          {!logged_in &&
            <NavItem>
              <a href={sign_in_route} className="nav-link">Sign In</a>
            </NavItem>
          }

          {/* Sign up link for not logged in users */}
          {!logged_in &&
            <NavItem className="last-item">
              <a href={new_user_route} className="nav-link">Sign Up</a>
            </NavItem>
          }

          {/* My apartments link for logged in user */}
          {logged_in &&
            <NavItem>
              <a href='/mylistings' className="nav-link">My Listings</a>
            </NavItem>
          }

          {/* New Apartment link for logged in user */}
          {logged_in &&
            <NavItem>
              <a href='/apartmentnew' className="nav-link">Create Listing</a>
            </NavItem>
          }

          {/* Sign out link for logged in users */}
          {logged_in &&
            <NavItem className="last-item">
              <a href={sign_out_route} className="nav-link">Sign Out</a>
            </NavItem>
          }
        </Nav>
      </>
    )
  }
}
export default Header