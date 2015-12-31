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

ActiveRecord::Schema.define(version: 20151231171951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flags", force: :cascade do |t|
    t.string   "name"
    t.string   "flag_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.text     "bio"
    t.string   "link_bio"
    t.string   "link_img"
    t.string   "full_name"
    t.string   "prefix"
    t.string   "forename"
    t.string   "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.date     "start_date"
    t.time     "start_time"
    t.string   "title"
    t.string   "subtitle"
    t.string   "activity_type"
    t.string   "short_description"
    t.text     "long_description"
    t.string   "loc"
    t.integer  "mins"
    t.integer  "flag_id"
    t.integer  "track_id"
    t.integer  "person_id"
    t.integer  "conference_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "programs", ["conference_id"], name: "index_programs_on_conference_id", using: :btree
  add_index "programs", ["flag_id"], name: "index_programs_on_flag_id", using: :btree
  add_index "programs", ["person_id"], name: "index_programs_on_person_id", using: :btree
  add_index "programs", ["track_id"], name: "index_programs_on_track_id", using: :btree

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "long_description"
    t.string   "link_img"
    t.integer  "conference_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "tracks", ["conference_id"], name: "index_tracks_on_conference_id", using: :btree

  add_foreign_key "programs", "conferences"
  add_foreign_key "programs", "flags"
  add_foreign_key "programs", "people"
  add_foreign_key "programs", "tracks"
  add_foreign_key "tracks", "conferences"
end
