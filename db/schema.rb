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

ActiveRecord::Schema.define(version: 20161116210357) do

  create_table "cars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image"
    t.float    "engine_size",  limit: 24
    t.integer  "speed"
    t.float    "acceleration", limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "manufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "manufacturer_id"
    t.integer  "car_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["car_id"], name: "index_models_on_car_id", using: :btree
    t.index ["manufacturer_id"], name: "index_models_on_manufacturer_id", using: :btree
  end

  add_foreign_key "models", "cars"
  add_foreign_key "models", "manufacturers"
end
