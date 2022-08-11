import React, { Component } from 'react'
import { Card, CardImg, CardBody, CardTitle, CardText, Button } from 'reactstrap'

export default class ApartmentShow extends Component {

  render() {
    let { apartment } = this.props

    return (
      <>
        <div className="show=container">
        {apartment &&
          <Card id="showCard">
            <CardImg src={apartment.image} />
            <CardBody>
              <CardTitle>${apartment.price} / month</CardTitle>
              <CardText>
                <span>{apartment.street}, {apartment.city}, {apartment.state}</span>
                <br/>
                <span>{apartment.bedrooms} Bedroom, {apartment.bathrooms} Bath</span>
                <br/>
                <span>Pets: {apartment.pets}</span>
              </CardText>
              <Button><a href={`/apartmentindex`} >Back to Listings</a></Button>
              <Button><a href={`/apartmentedit/${apartment.id}`} >Edit Listing</a></Button>
            </CardBody>
          </Card>
        }
        </div>
      </>
    )
  }
}
