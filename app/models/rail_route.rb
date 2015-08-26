class RailRoute < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :booking
  #has_and_belongs_to_many :stops
  has_many :railroutes_stop
  has_many :stops, through: :railroutes_stop
  #has_and_belongs_to_many :trains
  attr_accessible :a_time, :d_time, :departure, :destination
  validates_uniqueness_of :departure, :scope => [:destination, :d_time]
end
