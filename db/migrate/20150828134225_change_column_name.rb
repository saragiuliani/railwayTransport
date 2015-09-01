class ChangeColumnName < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
  	rename_column :rail_routes, :train, :train_number
  end
end
