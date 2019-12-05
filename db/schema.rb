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

ActiveRecord::Schema.define(version: 20191204150001) do

  create_table "properties", force: :cascade do |t|
    t.string   "property"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_nests", force: :cascade do |t|
    t.integer  "property_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "rent"
    t.string   "adress"
    t.integer  "building_age"
    t.text     "remarks"
    t.string   "name_of_railway_line"
    t.string   "statation_name"
    t.integer  "how_many_minutes_walks"
    t.string   "name_of_railway_line1"
    t.string   "statation_name1"
    t.integer  "how_many_minutes_walks1"
    t.index ["property_id"], name: "index_property_nests_on_property_id"
  end

end
