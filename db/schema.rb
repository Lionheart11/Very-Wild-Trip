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

ActiveRecord::Schema.define(version: 20160616132848) do

  create_table "choose_hobbies", force: :cascade do |t|
    t.integer  "hobby_id"
    t.integer  "participate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "choose_hobbies", ["hobby_id"], name: "index_choose_hobbies_on_hobby_id"
  add_index "choose_hobbies", ["participate_id"], name: "index_choose_hobbies_on_participate_id"

  create_table "hobbies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participates", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "trip_id"
    t.integer  "participant_id"
  end

  add_index "participates", ["participant_id"], name: "index_participates_on_participant_id"
  add_index "participates", ["trip_id"], name: "index_participates_on_trip_id"

  create_table "trips", force: :cascade do |t|
    t.string   "creator"
    t.string   "destination"
    t.integer  "budget"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
