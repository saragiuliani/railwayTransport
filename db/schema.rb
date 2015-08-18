# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150817083119) do

  create_table "bookings", :force => true do |t|
    t.string   "trip_departure"
    t.datetime "date"
    t.integer  "seats_class"
    t.string   "trip_destination"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "n_people"
    t.string   "user_email"
  end

  add_index "bookings", ["user_email", "date", "trip_departure"], :name => "bookings_user_email_date_trip_departure_key", :unique => true

  create_table "rail_routes", :force => true do |t|
    t.string   "departure"
    t.string   "destination"
    t.time     "d_time"
    t.time     "a_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "registration_date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], :name => "users_email_key", :unique => true

end
