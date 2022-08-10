import React, { Component } from 'react'
import { Card, CardImg, CardBody, CardTitle, CardText } from 'reactstrap'

export default class ApartmentShow extends Component {

  render() {
    let { apartment } = this.props

    return (
      <>
        <div classname="show=container">
        {apartment &&
          <Card id="showCard">
            <CardImg src={apartment.image} />
            <CardBody>
              <CardTitle>{apartment.price}</CardTitle>
              <CardText>
                <span>{apartment.street}, {apartment.city}, {apartment.state}</span>
                <br/>
                <span>{apartment.bedrooms}, {apartment.bathrooms}</span>
                <br/>
                <span>{apartment.pets}</span>
              </CardText>
            </CardBody>
          </Card>
        }
        </div>
      </>
    )
  }
}
