class ChangeType < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
  	change_column :rail_routes, :d_time, :time
  	change_column :rail_routes, :a_time, :time
  end
end
