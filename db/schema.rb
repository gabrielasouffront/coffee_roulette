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

ActiveRecord::Schema.define(version: 20160616221225) do

  create_table "coffee_dates", force: :cascade do |t|
    t.datetime "start_month"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "guest_lists", force: :cascade do |t|
    t.string   "employee_id"
    t.string   "coffee_date_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "months", force: :cascade do |t|
    t.datetime "start_month"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
