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

ActiveRecord::Schema.define(version: 20140401182830) do

  create_table "cart_lines", force: true do |t|
    t.integer  "cart_id"
    t.integer  "status"
    t.integer  "item_id"
    t.string   "note"
    t.integer  "price_in_cents"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cart_lines", ["cart_id", "item_id"], name: "index_cart_lines_on_cart_id_and_item_id", using: :btree

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "descr"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["customer_id", "user_id"], name: "index_carts_on_customer_id_and_user_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.integer  "cusnumber"
    t.string   "address"
    t.string   "address1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["cusnumber"], name: "index_customers_on_cusnumber", using: :btree

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

  add_index "order_lines", ["order_id", "status", "item_id"], name: "index_order_lines_on_order_id_and_status_and_item_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "status"
    t.integer  "user_id"
    t.string   "descr"
    t.string   "comments"
    t.string   "po"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id", "user_id", "po"], name: "index_orders_on_customer_id_and_user_id_and_po", using: :btree

  create_table "products", force: true do |t|
    t.string  "item_no"
    t.string  "desc"
    t.string  "add_desc"
    t.string  "type"
    t.integer "price_in_cents"
  end

  add_index "products", ["item_no", "type"], name: "index_products_on_item_no_and_type", using: :btree

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
    t.integer  "customer_id"
  end

  add_index "users", ["customer_id"], name: "index_users_on_customer_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
