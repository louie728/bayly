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

ActiveRecord::Schema.define(version: 20140401180419) do

  create_table "cart_lines", force: true do |t|
    t.integer  "cart_id"
    t.integer  "index"
    t.integer  "status"
    t.integer  "item_id"
    t.string   "note"
    t.integer  "price_in_cents"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.integer  "index"
    t.integer  "cusnumber"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "descr"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "cusnumber"
    t.integer  "index"
    t.string   "address"
    t.string   "address1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.integer  "repid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_lines", force: true do |t|
    t.integer  "order_id"
    t.integer  "status"
    t.integer  "item_id"
    t.string   "note"
    t.integer  "price_in_cents"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "cusnumber"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "descr"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string  "item_no"
    t.string  "index"
    t.string  "desc"
    t.string  "add_desc"
    t.string  "type"
    t.integer "price_in_cents"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
