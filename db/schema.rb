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

ActiveRecord::Schema.define(version: 20181106183108) do

  create_table "artists", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "artists", ["name"], name: "index_artists_on_name", unique: true

  create_table "long_p_lays", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "long_p_lays", ["artist_id"], name: "index_long_p_lays_on_artist_id"

  create_table "long_plays", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "long_plays", ["artist_id"], name: "index_long_plays_on_artist_id"

end
