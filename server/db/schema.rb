# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_10_150647) do

  create_table "comments", force: :cascade do |t|
    t.integer "fighter_id"
    t.string "comments"
    t.integer "likes"
    t.index ["fighter_id"], name: "index_comments_on_fighter_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "continent"
    t.string "flag_img"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.integer "weight_limit"
  end

  create_table "fighters", force: :cascade do |t|
    t.integer "division_id"
    t.integer "country_id"
    t.string "full_name"
    t.float "height"
    t.float "reach"
    t.string "wld"
    t.string "img_url"
    t.string "headshot_url"
    t.string "action_url"
    t.index ["country_id"], name: "index_fighters_on_country_id"
    t.index ["division_id"], name: "index_fighters_on_division_id"
  end

  add_foreign_key "comments", "fighters"
  add_foreign_key "fighters", "countries"
  add_foreign_key "fighters", "divisions"
end
