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

ActiveRecord::Schema.define(version: 20150522174046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "products", force: :cascade do |t|
    t.string   "name",                                                                    null: false
    t.string   "sku",                                                                     null: false
    t.string   "img",                                 default: "",                        null: false
    t.text     "description",                         default: "No description provided", null: false
    t.decimal  "price",       precision: 8, scale: 2, default: 0.0,                       null: false
    t.decimal  "sale_price",  precision: 8, scale: 2, default: 0.0,                       null: false
    t.integer  "discount",                            default: 0,                         null: false
    t.hstore   "specs"
    t.boolean  "active",                              default: true,                      null: false
    t.string   "category",                            default: "none",                    null: false
    t.text     "tag",                                 default: [],                                     array: true
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
  end

end
