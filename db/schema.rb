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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160617085317) do

  create_table "hobbies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       null: false
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants_trips", id: false, force: :cascade do |t|
    t.integer "trip_id"
    t.integer "participant_id"
    t.string  "hobbies"
  end

  add_index "participants_trips", ["participant_id"], name: "index_participants_trips_on_participant_id"
  add_index "participants_trips", ["trip_id"], name: "index_participants_trips_on_trip_id"

  create_table "trips", force: :cascade do |t|
    t.string   "creator"
    t.string   "destination"
    t.integer  "budget"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "start_date"
    t.datetime "end_date"
  end

end
