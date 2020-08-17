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

ActiveRecord::Schema.define(version: 2020_08_17_215110) do

  create_table "stocks", force: :cascade do |t|
    t.string "name"
    t.string "ticker"
    t.decimal "cost"
    t.decimal "shares"
    t.decimal "price"
    t.integer "market_cap"
    t.integer "volume"
    t.decimal "avg_volume"
    t.decimal "pe_ratio"
    t.decimal "open"
    t.decimal "previouse_close"
    t.decimal "dollar_change"
    t.decimal "percent_change"
    t.decimal "ytd_change"
    t.decimal "high"
    t.decimal "low"
    t.decimal "week_52_high"
    t.decimal "week_52_low"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_stocks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stock_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
