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

ActiveRecord::Schema.define(version: 2020_11_22_025007) do

  create_table "alolas", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "can_toes", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galars", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hoenns", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "johtos", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kalos", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kantos", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sinnohs", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unovas", force: :cascade do |t|
    t.string "name"
    t.string "type_1"
    t.string "type_2"
    t.string "height"
    t.string "weight"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end