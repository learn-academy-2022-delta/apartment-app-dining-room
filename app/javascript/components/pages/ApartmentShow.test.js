// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentShow from './ApartmentShow'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })

describe("When ApartmentShow renders", () => {
  const apartment = {
    user_id: 1,
    street: "123 other way",
    city: "nashville",
    state: "Tennessee",
    manager: "Steve",
    email: "apartmetnOther@gmail.com",
    price: "2100",
    bedrooms: 2,
    bathrooms: 1,
    pets: "no",
    image:"https://furnishrcdn-134f8.kxcdn.com/wp-content/uploads/2020/02/Sandy_apartment_daylight-e1584735599779.jpg",
    }
  
  let renderedApartmentShow;

  beforeEach(() => {
    renderedApartmentShow = shallow(<ApartmentShow apartment={apartment} />);
  });

  it("displays one Card", () => {
    const apartmentShowHeading = renderedApartmentShow.find("Card")
    expect(apartmentShowHeading.length).toEqual(1)
  })

  it("has two anchor tags", () =>{
    const apartmentShowAnchorTag = renderedApartmentShow.find("a")
    expect(apartmentShowAnchorTag.length).toEqual(2)
  })
})

