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

ActiveRecord::Schema.define(version: 20171206203759) do

  create_table "food_items", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "name"
    t.string   "food_type"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.string   "time"
    t.integer  "size"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "date"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.integer  "open_time"
    t.integer  "close_time"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_url"
    t.text     "description"
    t.integer  "max_reservation_size"
  end

  create_table "restaurants_users", id: false, force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
