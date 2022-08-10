require 'rails_helper'

RSpec.describe Apartment, type: :model do

  user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

  it 'can create an apartment' do

    user.apartments.create(
      street: "string",
      city: "string",
      state: "string",
      manager: "string",
      email: "string", 
      price: "string", 
      bedrooms: 3, 
      bathrooms: 3, 
      pets: "string",
      image: "www.urlhelper.com"
    )
    apartment = Apartment.all
    expect(apartment.length).to eq 1
  end

  it 'user cannot create an apartment without street' do
    apartment = user.apartments.create street: '', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

    expect(apartment.errors[:street]).to_not be_empty
  end

    it 'is not valid without a city' do
      apartment = user.apartments.create street: 'Canal ST', city: '', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'
      
      expect(apartment.errors[:city]).to_not be_empty
  end

  it 'is not valid without a state' do
    apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

    expect(apartment.errors[:state]).to_not be_empty
  end

  it 'is not valid without a manager' do
    apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: '', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs.', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

    expect(apartment.errors[:manager]).to_not be_empty
  end

it 'is not valid without a email' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: '', price: 'unlimited', pets: '2 small dogs.', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

  expect(apartment.errors[:email]).to_not be_empty
  end

it 'is not valid without a price' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: '', pets: '2 small dogs.', bedrooms: '7', bathrooms: '7', image: "http//facebook12345", user_id: 'SzaSeason'

  expect(apartment.errors[:price]).to_not be_empty
end

it 'is not valid without a pets' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

  expect(apartment.errors[:pets]).to_not be_empty
end

it 'is not valid without a bedrooms' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: '', bathrooms: 7, image: "http//facebook12345", user_id: 'SzaSeason'

  expect(apartment.errors[:bedrooms]).to_not be_empty
end

it 'is not valid without a bathrooms' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: 7, bathrooms: '', image: "http//facebook12345", user_id: 'SzaSeason'

  expect(apartment.errors[:bathrooms]).to_not be_empty
end

it 'is not valid without a image' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: 7, bathrooms: 7, image: "" , user_id: 'SzaSeason'

  expect(apartment.errors[:image]).to_not be_empty
end

it 'is not valid without a user_id' do
  apartment = user.apartments.create street: 'Canal ST', city: 'New Orleans', state: "The Boot", manager: 'My own Boss', email: 'szaseason@yahoo.com', price: 'unlimited', pets: '2 small dogs', bedrooms: 7, bathrooms: 7, image: "http//facebook12345", user_id: ""
 expect(apartment.errors[:user_id]).to be_empty
   end
end


