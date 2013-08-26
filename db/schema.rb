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

ActiveRecord::Schema.define(:version => 20130823191306) do

  create_table "stop_times", :force => true do |t|
    t.integer  "trip_id"
    t.integer  "stop_id"
    t.integer  "stop_sequence"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "stop_headsign"
    t.string   "pickup_type"
    t.string   "drop_off_type"
    t.string   "shape_dist_traveled"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "stops", :force => true do |t|
    t.integer  "stop_id"
    t.integer  "stop_code"
    t.string   "stop_name"
    t.float    "stop_lat"
    t.float    "stop_lon"
    t.integer  "location_type"
    t.integer  "parent_station"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.datetime "completed_at"
  end
 
    create_table "trips", :force => true do |t|
      t.integer "trip_id"
      t.integer "service_id"
      t.integer "route_id"
      t.string  "trip_headsign"
      t.integer "direction_id"
      t.integer  "shape_id"
      t.datetime "created_at",   :null => false
      t.datetime "updated_at",    :null => false
    end
end
