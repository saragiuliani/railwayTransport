class CreateRailroutesStops < ActiveRecord::Migration
  def change
    create_table :railroutes_stops do |t|

      t.timestamps
    end
  end
end
