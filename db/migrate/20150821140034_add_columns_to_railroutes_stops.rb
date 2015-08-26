class AddColumnsToRailroutesStops < ActiveRecord::Migration
  def change
    add_column :railroutes_stops, :railroute_id, :integer
    add_column :railroutes_stops, :stop_id, :integer
  end
end
