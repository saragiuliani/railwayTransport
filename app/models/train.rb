class Train < ActiveRecord::Base
  attr_accessible :firstclass_seats, :model, :secondclass_seats, :serial_number
  has_and_belongs_to_many :rail_routes
  validates_uniqueness_of :serial_number
end
