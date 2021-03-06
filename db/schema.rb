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

ActiveRecord::Schema.define(version: 2021_12_02_233809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "hp"
    t.boolean "fainted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "trainer_id"
    t.index ["trainer_id"], name: "index_pokemons_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.boolean "awake"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vineyards", force: :cascade do |t|
    t.string "name"
    t.boolean "organic"
    t.integer "years_established"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", force: :cascade do |t|
    t.boolean "sulfates"
    t.integer "years_aged"
    t.string "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "vineyard_id"
    t.index ["vineyard_id"], name: "index_wines_on_vineyard_id"
  end

  add_foreign_key "pokemons", "trainers"
  add_foreign_key "wines", "vineyards"
end
