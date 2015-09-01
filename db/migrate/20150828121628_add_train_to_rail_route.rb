class AddTrainToRailRoute < ActiveRecord::Migration
  def change
    add_column :rail_routes, :train, :integer
  end
end
