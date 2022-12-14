// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentIndex from './ApartmentIndex'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })

describe("When ApartmentIndex renders", () => {

  it("displays a heading", () => {
    const apartmentIndex = shallow(<ApartmentIndex />)
    const apartmentIndexHeading = apartmentIndex.find("h3")

    expect(apartmentIndexHeading.text()).toEqual("Apartment Index")

    expect(apartmentIndexHeading.text()).toEqual("Apartments For Rent")

  })

  it("displays an anchor tag", () => {

    const apartmentIndex = shallow(<ApartmentIndex />)
    const apartmentIndexAnchorTag = apartmentIndex.find("a")

    expect(apartmentIndexAnchorTag.length).toEqual(1)
  })
})