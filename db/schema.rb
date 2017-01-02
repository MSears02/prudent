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

ActiveRecord::Schema.define(version: 20170101031312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budget_categories", force: :cascade do |t|
    t.string   "Name"
    t.boolean  "IsDebit",    default: true, null: false
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "budget_items", force: :cascade do |t|
    t.float    "amount"
    t.integer  "DueDate",                      null: false
    t.date     "StartDate",                    null: false
    t.date     "EndDate"
    t.boolean  "IsDebit",      default: true,  null: false
    t.boolean  "IsReocurring", default: false, null: false
    t.boolean  "IsCollection", default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.string   "Title"
    t.float    "StartingBalance"
    t.float    "CurrentBalance"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "PageTitle"
    t.string   "PermaLink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "Email"
    t.string   "Password"
    t.string   "UserName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
