class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :trip_departure
      t.timestamp :date
      t.integer :seats_class
      t.string :trip_destination

      t.timestamps
    end
  end
end
