class RailroutesStop < ActiveRecord::Base
  attr_accessible :railroute_id, :stop_id
  belongs_to :rail_route
  belongs_to :stop
end
