require 'rails_helper'

  RSpec.describe "Apartments", type: :request do
    describe "GET /index" do
      it 'returns a list of apartments' do
      
        user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')
  
        user.apartments.create(
          street: "123 random way",
          city: "Sacramento",
          state: "CA",
          manager: "Dale",
          email: "apartmetnRandom@gmail.com",
          price: "1500",
          bedrooms: 1,
          bathrooms: 1,
          pets: "no",
          image:"https://cdn.apartmenttherapy.info/image/upload/v1588574754/small%20cool/Submissions/smaller-501-750-square-feet/small-cool-88721428-smaller-501-750-square-feet-Craig-Strulovitz.jpg",          )
  
        get '/apartments'
  
        apartments = JSON.parse(response.body)
        expect(response).to have_http_status(200)
        expect(apartments.length).to eq(1)
      end
    end

end
