class RailroutesTrain < ActiveRecord::Base
  attr_accessible :railroute_id, :train_id
  belongs_to :rail_route
  belongs_to :train

end
