class RailRoute < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :booking
  attr_accessible :a_time, :d_time, :departure, :destination
  # validates_uniqueness_of :departure, :destination, :d_time
end
