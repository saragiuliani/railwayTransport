class Train < ActiveRecord::Base
  attr_accessible :firstclass_seats, :model, :secondclass_seats, :serial_number
  has_many :railroutes_trains
  has_many :rail_routes, through: :railroutes_train
  validates_uniqueness_of :serial_number
end
