class RailRoute < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :booking
  has_many :stops
  attr_accessible :a_time, :d_time, :departure, :destination
  validates_uniqueness_of :departure, :scope => [:destination, :d_time]
end
