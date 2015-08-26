class Rb < ActiveRecord::Base
  attr_accessible :booking_date, :railroute_departure, :railroute_destination, :railroute_dtime, :trip_departure, :user_id
  has_many :booking
  has_many :railroute
end
