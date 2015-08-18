class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :city
      t.time :a_time

      t.timestamps
    end
  end
end
