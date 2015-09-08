class SameRailrouteValidator < ActiveModel::Validator
	def validate(record)
    if record.intersection?
      record.errors[:base] << 'ERROR: Overlaps of rail routes'
    end
  end
end


class RailRoute < ActiveRecord::Base
  attr_accessible :a_time, :d_time, :departure, :destination, :id_train

  has_many :bookings
  belongs_to :train, :class_name => RailRoute, :foreign_key => "id_train"
  has_many :stops
  validates_uniqueness_of :departure, :scope => [:destination, :d_time]
  validates :departure, :destination, :d_time, :a_time, :id_train, presence: true
  validates_with SameRailrouteValidator

  def intersection?
  	@rail_route = RailRoute.all
  	@rail_route.each do |rr|
  		if (RailRoute.where("id_train = ?", rr.id_train))
  			if (((rr.d_time.hour*60+rr.d_time.min..rr.a_time.hour*60+rr.a_time.min).overlaps?(d_time.hour*60+d_time.min..a_time.hour*60+a_time.min)) && (rr.id_train == id_train))
          return true
  			end
  		end
  	end
  	return false
  end

  def railroute?
    if !(current_user.is_admin?)
      return true
    else 
      return false
    end
  end

end