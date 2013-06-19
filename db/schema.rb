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

ActiveRecord::Schema.define(version: 20130619145036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: true do |t|
    t.string   "receipt"
    t.string   "code"
    t.datetime "deleted_at"
    t.integer  "total_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "claims", force: true do |t|
    t.integer  "amount_cents"
    t.integer  "tip_amount_cents"
    t.string   "name"
    t.string   "udid"
    t.integer  "bill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "claims", ["bill_id"], name: "index_claims_on_bill_id", using: :btree

end
