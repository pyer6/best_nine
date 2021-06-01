# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_01_084341) do

  create_table "best_nines", force: :cascade do |t|
    t.string "title"
    t.integer "starting"
    t.integer "relief"
    t.integer "closer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "one_position"
    t.integer "one_name"
    t.integer "two_position"
    t.integer "two_name"
    t.integer "three_position"
    t.integer "three_name"
    t.integer "four_position"
    t.integer "four_name"
    t.integer "five_position"
    t.integer "five_name"
    t.integer "six_position"
    t.integer "six_name"
    t.integer "seven_position"
    t.integer "seven_name"
    t.integer "eight_position"
    t.integer "eight_name"
    t.integer "nine_position"
    t.integer "nine_name"
  end

  create_table "players", force: :cascade do |t|
    t.integer "number"
    t.string "player_name"
    t.string "hand"
    t.string "bat"
    t.string "team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "field"
    t.string "league"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
