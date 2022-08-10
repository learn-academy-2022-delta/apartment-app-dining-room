import React, { Component } from 'react'
import { Card, CardImg, CardBody, CardTitle, CardSubtitle, Button, Col, Row } from 'reactstrap'

export default class ApartmentIndex extends Component {
  render() {
     // console.log(this.props.apartments)
    return (
      <>
      <h3>Apartments For Rent</h3>

        <Row>
          {this.props.apartments && this.props.apartments.map(apartments => {
            return(
              <Col sm={4}>
                <Card key={apartments.id}>
                  <CardImg src={apartments.image} alt="Apartment Image"/>
                    <CardBody>
                      <CardTitle>{apartments.bedrooms} bedroom {apartments.bathrooms} bath in {apartments.city}</CardTitle>
                      <CardSubtitle>Price: {apartments.price} </CardSubtitle>
                      <Button>More info here</Button>
                    </CardBody>
                </Card>
              </Col>
            )
          })}

        </Row>

      
      
      
      </>






    )
  }
}

