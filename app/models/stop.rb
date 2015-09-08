class SameStopValidator < ActiveModel::Validator
	def validate(record)
    if record.halfway?
      record.errors[:base] << 'ERROR: halfay not included in the rail route'
    end
  end
end

class Stop < ActiveRecord::Base
  attr_accessible :a_time, :city, :id_rail_route
  belongs_to :rail_route, :class_name => RailRoute, :foreign_key => "id_rail_route"
  validates_uniqueness_of :a_time, :scope => :city
  validates_with SameStopValidator

  
  def halfway?
  	@rr = RailRoute.find(id_rail_route)
  	if !((@rr.d_time.hour*60+@rr.d_time.min..@rr.a_time.hour*60+@rr.a_time.min).include?(a_time.hour*60+a_time.min))
  		return true
  	end
  	return false
  end
end
