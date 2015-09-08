class AddRailrouteToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :id_rail_route, :integer
  end
end
