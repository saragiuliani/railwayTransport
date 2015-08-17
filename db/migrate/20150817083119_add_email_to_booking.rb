class AddEmailToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :user_email, :string
  end
end
