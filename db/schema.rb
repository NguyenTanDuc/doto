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

ActiveRecord::Schema.define(version: 20151125111719) do

  create_table "matches", force: true do |t|
    t.string   "uid"
    t.string   "winner"
    t.datetime "starts_at"
    t.string   "mode"
    t.string   "first_blood"
    t.string   "match_type"
    t.string   "duration"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["user_id"], name: "index_matches_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "uid"
    t.string   "nickname"
    t.string   "avatar_url"
    t.string   "profile_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree

end
