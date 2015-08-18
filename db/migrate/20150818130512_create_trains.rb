class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.integer :serial_number
      t.string :model
      t.integer :firstclass_seats
      t.integer :secondclass_seats

      t.timestamps
    end
  end
end
