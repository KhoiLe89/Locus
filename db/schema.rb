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

ActiveRecord::Schema.define(version: 20161018213606) do

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

  create_table "continents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string  "location"
    t.string  "description"
    t.string  "img_url"
    t.integer "continent_id"
    t.index ["continent_id"], name: "index_destinations_on_continent_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string  "body"
    t.integer "activity_id"
    t.string  "quote"
    t.index ["activity_id"], name: "index_reviews_on_activity_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "destinations"
  add_foreign_key "destinations", "continents"
  add_foreign_key "reviews", "activities"
end
