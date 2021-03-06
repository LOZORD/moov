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

ActiveRecord::Schema.define(version: 20140928002043) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "date"
    t.integer  "num_volunteers_needed", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nonprofit_id"
  end

  create_table "interests", force: true do |t|
    t.boolean  "farming",         default: false
    t.boolean  "fitness",         default: false
    t.boolean  "family",          default: false
    t.boolean  "civic",           default: false
    t.boolean  "arts",            default: false
    t.boolean  "tech",            default: false
    t.boolean  "education",       default: false
    t.integer  "interested_id"
    t.string   "interested_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nonprofits", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "leader_id"
  end

  create_table "subgroups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", force: true do |t|
    t.string   "name"
    t.date     "bday"
    t.boolean  "approved",   default: false
    t.boolean  "leader",     default: false
    t.boolean  "admin",      default: false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
