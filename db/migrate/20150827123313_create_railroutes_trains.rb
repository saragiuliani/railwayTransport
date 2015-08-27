class CreateRailroutesTrains < ActiveRecord::Migration
  def change
    create_table :railroutes_trains do |t|
      t.integer :railroute_id
      t.integer :train_id

      t.timestamps
    end
  end
end
