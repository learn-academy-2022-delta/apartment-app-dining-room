require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "POST /create" do
    it"creates a new listing" do
      apartment_params = {
        apartment: {
          street: "random way",
          city: "random City",
          state: "Tennessee",
          manager: "random manager",
          email: "email@email.com", 
          price: 2200, 
          bedrooms: 2, 
          bathrooms: 2, 
          pets: "not allowed",
          image: "https://images.unsplash.com/photo-1605283176568-9b41fde3672e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
          user_id:1
        }
      }

      post '/apartments', params: apartment_params
      expect(response).to have_http_status(200)
      apartment = apartment.first
      expect(apartment.street).to eq 'random way'
      expect(apartment.city).to eq 'random City'
      expect(apartment.state).to eq 'Tennessee'
      expect(apartment.email).to eq 'email@email.com'
      expect(apartment.price).to eq 2200
      expect(apartment.bedroom).to eq 2
      expect(apartment.bathroom).to eq 2
      expect(apartment.pets).to eq "not allowed"
      expect(apartment.image).to eq 'https://images.unsplash.com/photo-1605283176568-9b41fde3672e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
    end
  end
end
