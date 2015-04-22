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

ActiveRecord::Schema.define(version: 20150422010044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.string   "breed",                    null: false
    t.text     "description", default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "likes_count", default: 0
  end

  create_table "breeds_dogs", id: false, force: :cascade do |t|
    t.integer "breed_id"
    t.integer "dog_id"
  end

  add_index "breeds_dogs", ["breed_id"], name: "index_breeds_dogs_on_breed_id", using: :btree
  add_index "breeds_dogs", ["dog_id"], name: "index_breeds_dogs_on_dog_id", using: :btree

  create_table "dogs", force: :cascade do |t|
    t.string   "name",                       null: false
    t.boolean  "male",        default: true, null: false
    t.integer  "user_id"
    t.date     "born_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "likes_count", default: 0
  end

  add_index "dogs", ["user_id"], name: "index_dogs_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "likeable_id"
    t.string   "likeable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["likeable_type", "likeable_id"], name: "index_likes_on_likeable_type_and_likeable_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "veterinaries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "likes_count", default: 0
  end

  create_table "veterinary_attendances", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "veterinary_id"
    t.boolean  "healthy",       default: true
    t.text     "notes",         default: ""
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "veterinary_attendances", ["dog_id"], name: "index_veterinary_attendances_on_dog_id", using: :btree
  add_index "veterinary_attendances", ["veterinary_id"], name: "index_veterinary_attendances_on_veterinary_id", using: :btree

  add_foreign_key "dogs", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "veterinary_attendances", "dogs"
  add_foreign_key "veterinary_attendances", "veterinaries"
end
