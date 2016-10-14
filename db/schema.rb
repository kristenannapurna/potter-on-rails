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

ActiveRecord::Schema.define(version: 20161014192827) do

  create_table "blood_statuses", force: :cascade do |t|
    t.string   "kind"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "blood_statuses", ["character_id"], name: "index_blood_statuses_on_character_id"

  create_table "books", force: :cascade do |t|
    t.string   "book_title"
    t.integer  "book_number"
    t.integer  "page_count"
    t.integer  "word_count"
    t.date     "date_published"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.boolean  "death_eater"
    t.boolean  "dumbledores_army"
    t.boolean  "order_of_the_phoenix"
    t.string   "alias"
    t.string   "wand"
    t.date     "birthday"
    t.string   "boggart"
    t.string   "patronus"
    t.integer  "house_id"
    t.integer  "school_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "characters", ["house_id"], name: "index_characters_on_house_id"
  add_index "characters", ["school_id"], name: "index_characters_on_school_id"

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "founder"
    t.text     "description"
    t.string   "color"
    t.string   "animal"
    t.string   "element"
    t.integer  "school_id"
    t.string   "ghost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "houses", ["school_id"], name: "index_houses_on_school_id"

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pets", ["character_id"], name: "index_pets_on_character_id"

  create_table "roles", force: :cascade do |t|
    t.string   "role"
    t.string   "place_of_employment"
    t.string   "department"
    t.integer  "characters_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "roles", ["characters_id"], name: "index_roles_on_characters_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "unforgivable"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string   "name"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "traits", ["house_id"], name: "index_traits_on_house_id"

end
