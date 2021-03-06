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

ActiveRecord::Schema.define(version: 20160507171411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "set_lists", force: :cascade do |t|
    t.integer  "target_length_in_seconds"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "name"
  end

  create_table "set_lists_songs", id: false, force: :cascade do |t|
    t.integer "set_list_id"
    t.integer "song_id"
  end

  add_index "set_lists_songs", ["set_list_id", "song_id"], name: "index_set_lists_songs_on_set_list_id_and_song_id", using: :btree
  add_index "set_lists_songs", ["song_id", "set_list_id"], name: "index_set_lists_songs_on_song_id_and_set_list_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.integer  "length_in_seconds"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
