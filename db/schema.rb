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

ActiveRecord::Schema.define(version: 20161213103534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string  "line_one"
    t.string  "line_two"
    t.string  "zip_code"
    t.string  "city"
    t.string  "state"
    t.integer "user_id"
    t.integer "restaurant_id"
  end

  create_table "couriers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "menu_item_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.decimal "price"
    t.integer "restaurant_id"
    t.string  "image_path"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.boolean "complete"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "image_path"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
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
    t.string   "address_line_one"
    t.string   "address_line_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
