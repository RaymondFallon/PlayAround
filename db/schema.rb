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

ActiveRecord::Schema.define(version: 20171027201500) do

  create_table "plays", force: :cascade do |t|
    t.string "title"
    t.string "playwright"
    t.integer "male_roles"
    t.integer "female_roles"
    t.integer "total_roles"
    t.boolean "musical"
    t.boolean "comedy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year_of_release"
  end

  create_table "productions", force: :cascade do |t|
    t.integer "play_id"
    t.string "theater"
    t.integer "zip_code"
    t.date "opening"
    t.date "closing"
    t.text "production_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end