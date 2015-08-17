class RemoveFieldNameFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :card
  end

  def down
    add_column :users, :card, :string
  end
end
