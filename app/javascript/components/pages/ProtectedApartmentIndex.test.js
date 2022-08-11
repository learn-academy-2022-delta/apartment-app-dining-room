
import React from 'react'

import Enzyme, { shallow } from 'enzyme'

import Adapter from 'enzyme-adapter-react-16'

import ProtectedApartmentIndex from './ProtectedApartmentIndex'

Enzyme.configure({ adapter: new Adapter() })

describe("When ProtectedApartmentIndex renders", () => {
  it("displays all apartments created by current user", () => {
    const protectedApartmentIndex = shallow(<ProtectedApartmentIndex />)
    const protectedApartmentIndexHeading = protectedApartmentIndex.find("h1")
    expect(protectedApartmentIndexHeading.text()).toEqual("My Listings")
  })
})