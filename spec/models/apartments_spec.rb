require 'rails_helper'

RSpec.describe Apartment, type: :model do
  it 'is not valid without a user_id' do
    Sza = User.create street: 'Main St', city: 'West coast', state: "West Coast", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A",

    expect(Sza.errors[:user_id]).to_not be_empty

  end
end
