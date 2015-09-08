class AddRailrouteToStop < ActiveRecord::Migration
  def change
    add_column :stops, :id_rail_route, :integer
  end
end
