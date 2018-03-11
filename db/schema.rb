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

ActiveRecord::Schema.define(version: 20170905123109) do

  create_table "artists", force: :cascade do |t|
    t.string   "artist_name"
    t.string   "image"
    t.string   "twitter_id"
    t.string   "hp_url"
    t.string   "message"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "remember_created_at"
    t.string   "frequency_place"
    t.text     "profile"
  end

  add_index "artists", ["email"], name: "index_artists_on_email", unique: true
  add_index "artists", ["reset_password_token"], name: "index_artists_on_reset_password_token", unique: true

  create_table "bits", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bits", ["user_id"], name: "index_bits_on_user_id"

  create_table "blogs", force: :cascade do |t|
    t.integer  "artist_id"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blogs", ["artist_id"], name: "index_blogs_on_artist_id"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "blog_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["blog_id"], name: "index_comments_on_blog_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "encourages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
    t.integer  "user_id"
  end

  add_index "encourages", ["artist_id"], name: "index_encourages_on_artist_id"
  add_index "encourages", ["user_id"], name: "index_encourages_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "place_prefecture"
    t.string   "place_city"
    t.string   "place_station"
    t.string   "place_detail"
    t.string   "time"
    t.string   "event_detail"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.integer  "artist_id"
  end

  add_index "events", ["artist_id"], name: "index_events_on_artist_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["blog_id"], name: "index_likes_on_blog_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "password"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
