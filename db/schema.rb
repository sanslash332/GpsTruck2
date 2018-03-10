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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180310053542) do

  create_table "gps_waypoints", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "sent_at"
    t.integer "truck_id"
    t.index ["truck_id"], name: "index_gps_waypoints_on_truck_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.text "identifier", null: false
    t.integer "current_gps_waypoint_id"
    t.index ["current_gps_waypoint_id"], name: "index_trucks_on_current_gps_waypoint_id"
    t.index ["identifier"], name: "index_trucks_on_identifier", unique: true
  end

end
