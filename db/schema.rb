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

ActiveRecord::Schema.define(:version => 20150904135011) do

  create_table "bookings", :force => true do |t|
    t.string   "trip_departure"
    t.datetime "date"
    t.integer  "seats_class"
    t.string   "trip_destination"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "n_people"
    t.integer  "user_id"
    t.integer  "id_rail_route"
  end

  create_table "rail_routes", :force => true do |t|
    t.string   "departure"
    t.string   "destination"
    t.time     "a_time"
    t.time     "d_time"
    t.integer  "id_train"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stops", :force => true do |t|
    t.string   "city"
    t.time     "a_time"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "id_rail_route"
  end

  create_table "trains", :force => true do |t|
    t.integer  "serial_number"
    t.string   "model"
    t.integer  "firstclass_seats"
    t.integer  "secondclass_seats"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "registration_date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "is_admin"
  end

end
