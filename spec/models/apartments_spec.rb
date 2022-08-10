require 'rails_helper'

RSpec.describe Apartment, type: :model do

  it 'is not valid without a street' do
    Sza = Apartment.create street: '', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason' 
    # User = Users.create email: 'szaseason@yahoo.com', encrypted_password: 'HotGirlSummer305'
     expect(Sza.errors[:street]).to_not be_empty
    end
    it 'is not valid without a city' do
      Sza = Apartment.create street: 'Canal ST', city: '', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
     expect(Sza.errors[:city]).to_not be_empty
  end
  it 'is not valid without a state' do
    Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
   expect(Sza.errors[:state]).to_not be_empty
end
it 'is not valid without a manager' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: '', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:manager]).to_not be_empty
end
it 'is not valid without a email' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: '', price: 'unlimited', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:email]).to_not be_empty
end
it 'is not valid without a price' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: '', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:price]).to_not be_empty
end
it 'is not valid without a pets' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:pets]).to_not be_empty
end
it 'is not valid without a bedrooms' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: '', bathrooms: '7', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:bedrooms]).to_not be_empty
end
it 'is not valid without a bathrooms' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: '7', bathrooms: '', image: "N/A", user_id: 'SzaSeason'
 expect(Sza.errors[:bathrooms]).to_not be_empty
end
it 'is not valid without a image' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: '7', bathrooms: '7', image: "", user_id: 'SzaSeason'
 expect(Sza.errors[:image]).to_not be_empty
end
it 'is not valid without a user_id' do
  Sza = Apartment.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: '7', bathrooms: '7', image: "N/A", user_id: ''
 expect(Sza.errors[:user_id]).to_not be_empty
end
end

