class CreateRbs < ActiveRecord::Migration
  def change
    create_table :rbs do |t|
      t.string :railroute_departure
      t.string :railroute_destination
      t.time :railroute_dtime
      t.string :trip_departure
      t.timestamp :booking_date
      t.integer :user_id

      t.timestamps
    end
  end
end
