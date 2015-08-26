class Tr < ActiveRecord::Base
  attr_accessible :railroute_departure, :railroute_destination, :railroute_dtime, :train
  has_many :railroute
  has_many :train
end
