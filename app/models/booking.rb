class Booking < ActiveRecord::Base
  has_one :user
  has_many :rail_routes
  attr_accessible :date, :seats_class, :trip_departure, :trip_destination, :n_people, :user_id
  validates :trip_departure, presence: true 
  validates :trip_destination, presence: true
  validates_uniqueness_of :user_id, :scope => [:date, :trip_departure], :message => "You can not booking two trip with the same departure and date"
end
