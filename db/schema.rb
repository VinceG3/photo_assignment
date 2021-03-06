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

ActiveRecord::Schema.define(version: 20160512153320) do

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.integer  "retrieved_id"
    t.integer  "retrieved_user_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.integer  "retrieved_id"
    t.integer  "album_id"
    t.integer  "retrieved_album_id"
    t.string   "thumbnail_url"
    t.string   "url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "email"
    t.string   "address_street"
    t.string   "address_suite"
    t.string   "address_city"
    t.string   "address_zip_code"
    t.string   "phone"
    t.string   "website"
    t.string   "password"
    t.integer  "retrieved_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
