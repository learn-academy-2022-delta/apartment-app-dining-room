import React, { Component } from 'react'
import { Nav, NavItem } from 'reactstrap'

export default class Home extends Component {
  render() {
    const {
      new_user_route,
      sign_in_route,
    } = this.props
    return (
      <div>
        <h3>Welcome!</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non accumsan cursus tristique parturient faucibus cras non amet lectus. Placerat netus viverra tincidunt sed enim varius volutpat sed. Commodo arcu mauris nisl malesuada tincidunt enim. Amet, mauris scelerisque morbi penatibus sodales scelerisque sed. Adipiscing purus aliquam dui mi, sit dui lorem sit mattis. Consequat nunc congue arcu tempor ut iaculis risus nunc consectetur.</p>
        <Nav>
          <NavItem>
                <a href={sign_in_route} className="nav-link">Sign In</a>
          </NavItem>
          <NavItem>
                <a href={new_user_route} className="nav-link">Sign Up</a>
          </NavItem>
        </Nav>
      </div>
    )
  }
}
