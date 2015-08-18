class Booking < ActiveRecord::Base
  has_one :user
  has_many :rail_routes
  attr_accessible :date, :seats_class, :trip_departure, :trip_destination, :n_people, :user_id
  validates :trip_departure, presence: true 
  validates :trip_destination, presence: true
  
end
