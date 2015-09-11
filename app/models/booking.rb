class NoDeletableValidator < ActiveModel::Validator
  def validate(record)
    if record.notDeletable?
      record.errors[:base] << "ERROR: You can't delete this booking"
    end
  end
end

class UnpossibleValidator < ActiveModel::Validator
  def validate(record)
    if record.notPossible?
      record.errors[:base] << "ERROR: You can't book this booking" 
    end
  end
end





class Booking < ActiveRecord::Base
  attr_accessible :date, :seats_class, :trip_departure, :trip_destination, :n_people, :user_id, :id_rail_route 
  belongs_to :user, :class_name => Booking, :foreign_key => "user_id"
  belongs_to :rail_routes, :class_name => Booking, :foreign_key => "id_rail_route"
  validates :trip_departure, presence: true 
  validates :trip_destination, presence: true
  validates_uniqueness_of :user_id, :scope => [:date, :trip_departure], :message => "You can not booking two trip with the same departure and date"
  validates_with NoDeletableValidator, on: :delete
  validates_with UnpossibleValidator

  def notDeletable?
    if !(Time.now+1440 < date)
      return true
    end
    return false
  end

  def notPossible?
    @stops = Stop.all(:order => "a_time").each do |s1|
      if(s1.city == trip_departure && (date.hour*60+date.min <= s1.a_time.hour*60+s1.a_time.min))
        @rr = RailRoute.find(s1.id_rail_route)
        @sts = Stop.where("id_rail_route = ?", @rr.id)
        @sts.each do |s2|
          if(s2.city == trip_destination && s1.a_time < s2.a_time)
            update_attribute(:id_rail_route, @rr.id.to_i)

            update_attribute(:date, date.strftime("%Y-%m-%d ") << @rr.d_time.strftime("%H:%M:%S"))
            if !(unavailableSeats?(@rr.id))
              return false
            else
              return true
            end

          end
        end
      end
    end
    return true
  end

  
   def unavailableSeats?(rr_id)

    train = Train.find(RailRoute.find(rr_id).id_train)
    seats1 = 0
    seats2 = 0

    bookings = Booking.where("id_rail_route = ? AND date = ?", rr_id, date.strftime("%Y-%m-%d ") << @rr.d_time.strftime("%H:%M:%S"))
    
    bookings.each do |b|
      if (b.seats_class == 1)
        seats1 = seats1 + b.n_people
      else      
        seats2 = seats2 + b.n_people
      end
    end
    if (seats_class == 1 && (train.firstclass_seats >= seats1)) 
      return false
    else 
      if(seats_class == 2 && (train.secondclass_seats >= seats2))
        return false
      end
    end
    return true
  end
end