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

ActiveRecord::Schema.define(version: 20161017181155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string  "activity_type"
    t.string  "description"
    t.integer "price"
    t.integer "destination_id"
    t.string  "address"
    t.string  "img_url"
    t.string  "name"
    t.string  "img_url2"
    t.string  "img_url3"
    t.string  "img_url4"
    t.index ["destination_id"], name: "index_activities_on_destination_id", using: :btree
  end

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.string "description"
    t.string "img_url"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string  "body"
    t.integer "activity_id"
    t.index ["activity_id"], name: "index_reviews_on_activity_id", using: :btree
  end

  add_foreign_key "activities", "destinations"
  add_foreign_key "reviews", "activities"
end
