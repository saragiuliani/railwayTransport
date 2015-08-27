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

ActiveRecord::Schema.define(:version => 20150827123313) do

  create_table "bookings", :force => true do |t|
    t.string   "trip_departure"
    t.datetime "date"
    t.integer  "seats_class"
    t.string   "trip_destination"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "n_people"
    t.string   "user_email"
    t.integer  "user_id"
    t.string   "rr_departure"
    t.string   "rr_destination"
    t.time     "rr_dtime"
  end

  create_table "rail_routes", :force => true do |t|
    t.string   "departure"
    t.string   "destination"
    t.time     "d_time"
    t.time     "a_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "railroutes_stops", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "railroute_id"
    t.integer  "stop_id"
  end

  create_table "railroutes_trains", :force => true do |t|
    t.integer  "railroute_id"
    t.integer  "train_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "rbs", :force => true do |t|
    t.string   "railroute_departure"
    t.string   "railroute_destination"
    t.time     "railroute_dtime"
    t.string   "trip_departure"
    t.datetime "booking_date"
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "stops", :force => true do |t|
    t.string   "city"
    t.time     "a_time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trains", :force => true do |t|
    t.integer  "serial_number"
    t.string   "model"
    t.integer  "firstclass_seats"
    t.integer  "secondclass_seats"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "trs", :force => true do |t|
    t.string   "railroute_departure"
    t.string   "railroute_destination"
    t.time     "railroute_dtime"
    t.integer  "train"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
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
