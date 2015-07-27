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

ActiveRecord::Schema.define(version: 20150727025049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.date     "release_date"
    t.integer  "artist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fans", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "name"
    t.integer  "fan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "payment_methods", ["fan_id"], name: "index_payment_methods_on_fan_id", using: :btree

  create_table "playlist_songs", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "song_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "playlist_songs", ["playlist_id"], name: "index_playlist_songs_on_playlist_id", using: :btree
  add_index "playlist_songs", ["song_id"], name: "index_playlist_songs_on_song_id", using: :btree

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "duration"
    t.string   "audio_file"
    t.integer  "listen_count"
    t.integer  "rank"
    t.integer  "album_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "fan_id"
    t.integer  "artist_id"
    t.integer  "payment_method_id"
    t.string   "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "transactions", ["artist_id"], name: "index_transactions_on_artist_id", using: :btree
  add_index "transactions", ["fan_id"], name: "index_transactions_on_fan_id", using: :btree
  add_index "transactions", ["payment_method_id"], name: "index_transactions_on_payment_method_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_role_type"
    t.integer  "user_role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "albums", "artists"
  add_foreign_key "payment_methods", "fans"
  add_foreign_key "playlist_songs", "playlists"
  add_foreign_key "playlist_songs", "songs"
  add_foreign_key "songs", "albums"
  add_foreign_key "transactions", "artists"
  add_foreign_key "transactions", "fans"
  add_foreign_key "transactions", "payment_methods"
end
