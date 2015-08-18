class Stop < ActiveRecord::Base
  has_many :rail_routes
  attr_accessible :a_time, :city
  validates_uniqueness_of :a_time, :scope => :city
end
