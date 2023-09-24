# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 0) do
  create_table "customers", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.string "smart_id", limit: 30, null: false
    t.string "first_name", limit: 30, null: false
    t.string "last_name", limit: 30, null: false
    t.index ["smart_id"], name: "smart_id", unique: true
  end

  create_table "employees", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "last_name", limit: 30, null: false
    t.string "active_store_number", limit: 30, null: false
  end

  create_table "order_line_items", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.integer "order_id", null: false, unsigned: true
    t.integer "rental_id", null: false, unsigned: true
    t.datetime "due_datetime", precision: nil, null: false
    t.index ["order_id"], name: "order_id"
    t.index ["rental_id"], name: "rental_id"
  end

  create_table "orders", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.integer "employee_id", null: false, unsigned: true
    t.integer "customer_id", null: false, unsigned: true
    t.string "store_number", limit: 30, null: false
    t.datetime "order_datetime", precision: nil, null: false
    t.index ["customer_id"], name: "customer_id"
    t.index ["employee_id"], name: "employee_id"
  end

  create_table "rentals", id: { type: :integer, unsigned: true }, charset: "latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "rental_type", limit: 30, null: false
    t.string "category", limit: 30, null: false
    t.string "year", limit: 4, null: false
    t.string "director", limit: 60
    t.integer "num_available", unsigned: true
  end

  add_foreign_key "order_line_items", "orders", name: "order_line_items_ibfk_1"
  add_foreign_key "order_line_items", "rentals", name: "order_line_items_ibfk_2"
  add_foreign_key "orders", "customers", name: "orders_ibfk_2"
  add_foreign_key "orders", "employees", name: "orders_ibfk_1"
end
