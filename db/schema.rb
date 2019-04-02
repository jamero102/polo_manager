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

ActiveRecord::Schema.define(version: 2019_04_02_230226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chukkers", force: :cascade do |t|
    t.integer "number"
    t.string "team"
    t.boolean "renting"
    t.bigint "user_id"
    t.bigint "game_id"
    t.bigint "horse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_chukkers_on_game_id"
    t.index ["horse_id"], name: "index_chukkers_on_horse_id"
    t.index ["user_id"], name: "index_chukkers_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.datetime "time"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "group_lessons", force: :cascade do |t|
    t.bigint "lesson_id"
    t.datetime "time"
    t.string "type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_group_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_group_lessons_on_user_id"
  end

  create_table "horses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "level"
    t.boolean "in_work"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_horses_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "type"
    t.datetime "time"
    t.bigint "horse_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["horse_id"], name: "index_lessons_on_horse_id"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "outdoor_handicap", default: 0
    t.integer "arena_handicap", default: 0
    t.boolean "membership_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chukkers", "games"
  add_foreign_key "chukkers", "horses"
  add_foreign_key "chukkers", "users"
  add_foreign_key "games", "users"
  add_foreign_key "group_lessons", "lessons"
  add_foreign_key "group_lessons", "users"
  add_foreign_key "horses", "users"
  add_foreign_key "lessons", "horses"
  add_foreign_key "lessons", "users"
end
