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

ActiveRecord::Schema.define(version: 20171221194830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars_to_sell", id: :serial, force: :cascade do |t|
    t.string "brand", limit: 15, null: false
    t.string "model", limit: 15, null: false
    t.decimal "price", precision: 9, scale: 2, null: false
    t.string "additional_information", limit: 200
  end

  create_table "cars_to_sell_discounts", id: :serial, force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "discount_id", null: false
  end

  create_table "clients", id: :serial, force: :cascade do |t|
    t.string "name", limit: 15, null: false
    t.string "surname", limit: 20, null: false
    t.string "email", limit: 30, null: false
    t.string "phone_number", limit: 9, null: false
    t.string "password", null: false
    t.integer "employee"
    t.boolean "use_renting"
    t.boolean "use_service"
    t.boolean "buy_car"
    t.index ["email"], name: "email unique", unique: true
    t.index ["phone_number"], name: "phone_number unique", unique: true
  end

  create_table "discounts", id: :serial, force: :cascade do |t|
    t.string "discount_name", limit: 50, null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.decimal "percentage_value", precision: 3, scale: 2, null: false
    t.index ["discount_name"], name: "discount_name unique", unique: true
  end

  create_table "employees", id: :serial, force: :cascade do |t|
    t.string "name", limit: 15, null: false
    t.string "surname", limit: 20, null: false
    t.string "email", limit: 30, null: false
    t.integer "phone_number", null: false
    t.string "password", limit: 40, null: false
    t.string "position", limit: 30, null: false
    t.decimal "salary", precision: 7, scale: 2, null: false
    t.integer "days_of_paid_leave", null: false
    t.date "date_of_employment", null: false
    t.decimal "bonuses", precision: 7, scale: 2, null: false
    t.index ["email"], name: "email", unique: true
    t.index ["phone_number"], name: "phone_number", unique: true
  end

  create_table "faults", id: :serial, force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.decimal "price", precision: 7, scale: 2, null: false
    t.index ["name"], name: "name", unique: true
  end

  create_table "ordered_cars", id: :serial, force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "client_id", null: false
    t.string "status", limit: 20, null: false
  end

  create_table "rental_cars", id: :serial, force: :cascade do |t|
    t.string "brand", limit: 15, null: false
    t.string "model", limit: 15, null: false
    t.string "additional_information", limit: 200
  end

  create_table "rentings", id: :serial, force: :cascade do |t|
    t.integer "car_id", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "client_id", null: false
  end

  create_table "service_center", id: :integer, default: -> { "nextval('servic_center_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "brand", limit: 15, null: false
    t.string "model", limit: 20, null: false
    t.string "license_plate", limit: 15, null: false
    t.string "status", limit: 30, null: false
    t.integer "client_id", null: false
    t.integer "mechanic", null: false
    t.date "beginning_date", null: false
    t.date "end_date"
    t.decimal "cost", precision: 7, scale: 2, null: false
  end

  create_table "service_faults", id: :serial, force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "fault_id", null: false
  end

  create_table "suppliers", id: :serial, force: :cascade do |t|
    t.string "data", limit: 100, null: false
    t.string "products"
    t.index ["data"], name: "index_suppliers_on_data", unique: true
  end

  create_table "supplies", id: :serial, force: :cascade do |t|
    t.date "date", null: false
    t.integer "supplier_id", null: false
    t.string "status", limit: 30, null: false
    t.integer "product_id"
    t.integer "amount"
  end

  create_table "supplies_elements", id: :integer, default: -> { "nextval('supplies_element_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer "supply_id", null: false
    t.integer "element_id", null: false
    t.integer "amount", null: false
  end

  create_table "vacation_requests", id: :integer, default: -> { "nextval('vacation_request_id_seq'::regclass)" }, force: :cascade do |t|
    t.integer "emplyee_id", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "how_many_days", null: false
    t.string "status ", limit: 30, null: false
  end

  create_table "vacations", id: :serial, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.date "beginning_date", null: false
    t.date "end_date", null: false
    t.integer "how_many_days", null: false
  end

  create_table "warehouse", id: :serial, force: :cascade do |t|
    t.string "element", limit: 50, null: false
    t.integer "amount", null: false
    t.string "status", limit: 30, null: false
    t.index ["element"], name: "index_warehouse_on_element", unique: true
  end

  add_foreign_key "cars_to_sell_discounts", "cars_to_sell", column: "car_id", name: "car_id"
  add_foreign_key "cars_to_sell_discounts", "discounts", name: "discount_id"
  add_foreign_key "ordered_cars", "cars_to_sell", column: "car_id", name: "car_id"
  add_foreign_key "ordered_cars", "clients", name: "client_id"
  add_foreign_key "rentings", "clients", name: "client_id"
  add_foreign_key "rentings", "rental_cars", column: "car_id", name: "car_id"
  add_foreign_key "service_center", "clients", name: "client_id"
  add_foreign_key "service_center", "employees", column: "mechanic", name: "employee_id"
  add_foreign_key "service_faults", "faults", name: "fault_id"
  add_foreign_key "service_faults", "service_center", column: "service_id", name: "service_id"
  add_foreign_key "supplies", "suppliers", name: "supplier_id"
  add_foreign_key "supplies_elements", "supplies", name: "supply_id"
  add_foreign_key "supplies_elements", "warehouse", column: "element_id", name: "element_id"
  add_foreign_key "vacation_requests", "employees", column: "emplyee_id", name: "employee_id"
  add_foreign_key "vacations", "employees", name: "employee_id"
end
