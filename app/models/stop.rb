class Stop < ActiveRecord::Base
  #has_and_belongs_to_many :railroutes_stops
  has_many :railroutes_stop
  has_many :rail_routes, through: :railroutes_stop
  attr_accessible :a_time, :city
  validates_uniqueness_of :a_time, :scope => :city
end
