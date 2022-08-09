require 'rails_helper'

RSpec.describe Apartment, type: :model do
  it("Apartment model exists") do
  expect{Apartment.create}.to_not raise_error 
  end
end
