class AddColumsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :rr_departure, :string
    add_column :bookings, :rr_destination, :string
    add_column :bookings, :rr_dtime, :time
  end
end
