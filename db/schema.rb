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

ActiveRecord::Schema.define(version: 20160918083809) do

  create_table "charities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loos", force: :cascade do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "long"
    t.float    "stars"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_positive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "review_notes", force: :cascade do |t|
    t.integer  "review_id"
    t.integer  "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_review_notes_on_note_id"
    t.index ["review_id"], name: "index_review_notes_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "loo_id"
    t.integer  "trip_id"
    t.integer  "stars"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loo_id"], name: "index_reviews_on_loo_id"
    t.index ["trip_id"], name: "index_reviews_on_trip_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "loo_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.float    "earnings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loo_id"], name: "index_trips_on_loo_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
