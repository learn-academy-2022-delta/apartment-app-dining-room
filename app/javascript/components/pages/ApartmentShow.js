import React, { Component } from 'react'
import { Card } from 'reactstrap'

export default class ApartmentShow extends Component {
  render() {
    return (
      <>
        <div classname="show=container">
          <Card id="showCard">
            <Card.Img src={apartment.image} />
            <Card.Body>
              <Card.Title>{apartment.price}</Card.Title>
              <Card.Text>
                <span>{apartment.street}, {apartment.city}, {apartment.state}</span>
                <br/>
                <span>{apartment.bedrooms}, {apartment.bathrooms}</span>
                <br/>
                <span>{apartment.pets}</span>
              </Card.Text>
            </Card.Body>
          </Card>
        </div>
      </>
    )
  }
}
