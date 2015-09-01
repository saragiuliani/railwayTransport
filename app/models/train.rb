class Train < ActiveRecord::Base
  attr_accessible :firstclass_seats, :model, :secondclass_seats, :serial_number
  has_many :rail_routes
end
