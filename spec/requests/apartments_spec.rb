require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "gets a list of apartments" do
      Apartment.create(
        street: "123 other way",
        city: "nashville",
        state: "Tennessee",
        manager: "Steve",
        email: "apartmetnOther@gmail.com",
        price: "2100",
        bedrooms: 2,
        bathrooms: 1,
        pets: "no",
        image:"https://furnishrcdn-134f8.kxcdn.com/wp-content/uploads/2020/02/Sandy_apartment_daylight-e1584735599779.jpg"
      )

      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      

    end
  end
end
