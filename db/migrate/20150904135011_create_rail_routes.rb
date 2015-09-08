class CreateRailRoutes < ActiveRecord::Migration
  def change
    create_table :rail_routes do |t|
      t.string :departure
      t.string :destination
      t.time :a_time
      t.time :d_time
      t.integer :id_train

      t.timestamps
    end
  end
end
