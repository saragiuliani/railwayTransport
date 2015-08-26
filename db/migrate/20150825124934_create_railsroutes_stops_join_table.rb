class CreateRailsroutesStopsJoinTable < ActiveRecord::Migration
  def up
  	create_table :railroutes_stops, :id => false do |t|
      t.integer :railroute_id
      t.integer :stop_id
    end

    add_index :railroutes_stops, [:railroute_id, :stop_id]
  end

  def down
  	drop_table :railroutes_stops
  end
end
