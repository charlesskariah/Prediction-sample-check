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

ActiveRecord::Schema.define(version: 20140919045111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_leagues", force: true do |t|
    t.integer "club_id"
    t.integer "league_id"
  end

  create_table "clubs", force: true do |t|
    t.string   "club_name"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "league_name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.string   "status"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "club_1_id"
    t.integer  "club_2_id"
    t.date     "match_date"
    t.time     "match_time"
    t.integer  "club_1_score"
    t.integer  "club_2_score"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
  end

  create_table "predictions", force: true do |t|
    t.integer  "club1_predicted_score"
    t.integer  "club2_predicted_score"
    t.integer  "result"
    t.integer  "accuracy"
    t.integer  "margin"
    t.integer  "points"
    t.integer  "selected_league_id"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", force: true do |t|
    t.string   "time_zone"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rake_task_details", force: true do |t|
    t.string   "name"
    t.datetime "run_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.string   "round_name"
    t.string   "status"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selected_leagues", force: true do |t|
    t.string   "status"
    t.integer  "league_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_points"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "country"
    t.date     "dob"
    t.boolean  "is_admin"
    t.string   "provider"
    t.string   "uid"
    t.boolean  "user_agreement"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
