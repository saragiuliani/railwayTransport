class AddSeatsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :n_people, :integer
  end
end
