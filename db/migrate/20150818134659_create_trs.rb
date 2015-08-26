class CreateTrs < ActiveRecord::Migration
  def change
    create_table :trs do |t|
      t.string :railroute_departure
      t.string :railroute_destination
      t.time :railroute_dtime
      t.integer :train

      t.timestamps
    end
  end
end
