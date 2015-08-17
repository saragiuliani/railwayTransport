class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :card
      t.timestamp :registration_date

      t.timestamps
    end
  end
end
