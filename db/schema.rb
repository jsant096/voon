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

ActiveRecord::Schema.define(version: 20150117210802) do

  create_table "Interests", force: true do |t|
    t.string "name",        limit: 45
    t.string "description", limit: 45
    t.string "created_at",  limit: 45
    t.string "updated_at",  limit: 45
    t.string "created_by",  limit: 45
    t.string "updated_by",  limit: 45
  end

  create_table "Users_Interests_link", id: false, force: true do |t|
    t.string  "id",          limit: 45, null: false
    t.integer "user_id",                null: false
    t.integer "interest_id",            null: false
    t.string  "created_at",  limit: 45
    t.string  "updated_at",  limit: 45
    t.string  "created_by",  limit: 45
    t.string  "updated_by",  limit: 45
  end

  add_index "users_interests_link", ["interest_id"], name: "fk_Users_has_Interests_Interests1_idx", using: :btree
  add_index "users_interests_link", ["user_id"], name: "fk_Users_has_Interests_Users1_idx", using: :btree

  create_table "api_keys", force: true do |t|
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string  "created_at",  limit: 45
    t.string  "updated_at",  limit: 45
    t.string  "created_by",  limit: 45
    t.string  "updated_by",  limit: 45
    t.string  "Commentscol", limit: 45
    t.integer "event_id",               null: false
  end

  add_index "comments", ["event_id"], name: "fk_Comments_Events_idx", using: :btree

  create_table "database_structures", force: true do |t|
  end

  create_table "events", id: false, force: true do |t|
    t.integer "id",                     null: false
    t.string  "title",       limit: 45
    t.string  "description", limit: 45
    t.string  "created_at",  limit: 45
    t.string  "updated_at",  limit: 45
    t.string  "created_by",  limit: 45
    t.string  "updated_by",  limit: 45
    t.integer "user_id",                null: false
  end

  add_index "events", ["user_id"], name: "fk_Events_Users1_idx", using: :btree

  create_table "users", force: true do |t|
    t.string "first_name",         limit: 45
    t.string "last_name",          limit: 45
    t.string "dob",                limit: 45
    t.string "email",              limit: 45
    t.string "password",           limit: 45
    t.string "zipcode",            limit: 45
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token",     limit: 128
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
