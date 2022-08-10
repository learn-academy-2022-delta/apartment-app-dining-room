import React, { Component } from 'react'
import { Card, CardImg, CardText, CardDeck, CardBody,
  CardTitle, CardSubtitle, Button, Col, Row } from 'reactstrap';

export default class ApartmentIndex extends Component {
  render() {
    const {
      logged_in,
      current_user
    } = this.props
    console.log("logged_in:", logged_in)
    console.log("current_user:", current_user)
    return (

      <h3>Apartment Index</h3>


    )
  }
}
