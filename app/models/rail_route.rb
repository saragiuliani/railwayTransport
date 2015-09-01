class RailRoute < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :booking
  has_many :railroutes_stop
  has_many :stops, through: :railroutes_stop
  has_one :train
  attr_accessible :a_time, :d_time, :departure, :destination, :train_number
  validates_uniqueness_of :departure, :scope => [:destination, :d_time]
  validates_uniqueness_of :train_number
end
