class Apartment < ApplicationRecord
    belongs_to :user
    validates :street, :state, :city, :manager, :email, :price, :bedrooms, :bathrooms, :pets, :image, :user_id, presence: true
end

