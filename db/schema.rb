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

ActiveRecord::Schema.define(version: 20160305105717) do

  create_table "autobiographies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "autobiographies", ["user_id"], name: "index_autobiographies_on_user_id"

  create_table "basic_informations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "chinesename"
    t.string   "englishname"
    t.integer  "gender"
    t.date     "birthday"
    t.integer  "military_service"
    t.string   "telephone"
    t.string   "phone"
    t.string   "address"
    t.string   "educational_background"
    t.string   "other_educational_background"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "basic_informations", ["user_id"], name: "index_basic_informations_on_user_id"

  create_table "skills", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "status"
    t.integer  "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["user_id"], name: "index_skills_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

  add_index "users", ["name", "password_digest"], name: "index_users_on_name_and_password_digest"

  create_table "works", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["user_id"], name: "index_works_on_user_id"

end
