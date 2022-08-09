# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
user2 = User.create(email: 'test2@test.test', password: '12345678', password_confirmation: '12345678')


apartment1 = [
  #street:string city:string state:string manager:string email:string price:string bedrooms:integer bathrooms:integer pets:string image:text user_id:integer
  {
    
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
  
]

apartment2 = [
    {
    street: "123 random way",
    city: "Sacramento",
    state: "CA",
    manager: "Dale",
    email: "apartmetnRandom@gmail.com",
    price: "1500",
    bedrooms: 1,
    bathrooms: 1,
    pets: "no",
    image:"https://cdn.apartmenttherapy.info/image/upload/v1588574754/small%20cool/Submissions/smaller-501-750-square-feet/small-cool-88721428-smaller-501-750-square-feet-Craig-Strulovitz.jpg",
    
  },
  street: "123 random way",
    city: "Sacramento",
    state: "CA",
    manager: "Dale",
    email: "apartmetnRandom@gmail.com",
    price: "1800",
    bedrooms: 2,
    bathrooms: 1,
    pets: "no",
    image:"https://cdn.apartmenttherapy.info/image/upload/v1588574754/small%20cool/Submissions/smaller-501-750-square-feet/small-cool-88721428-smaller-501-750-square-feet-Craig-Strulovitz.jpg",
    
]



apartment1.each do |attributes|
    user1.apartments.create(attributes)
    p"each apartments attributes #{attributes}"
  end

  apartment2.each do |attributes|
    user2.apartments.create(attributes)
    p"each apartments attributes #{attributes}"
  end

  p "#{user1.apartments}"

  

