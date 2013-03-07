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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130307071658) do

  create_table "availabilities", :force => true do |t|
    t.datetime "start_t"
    t.datetime "end_t"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matches", :force => true do |t|
    t.datetime "date"
    t.datetime "register_date"
    t.datetime "confirm_date"
    t.integer  "winner_score"
    t.integer  "loser_score"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.boolean  "winner_confirmed", :default => false
    t.boolean  "loser_confirmed",  :default => false
    t.boolean  "disputed",         :default => false
    t.boolean  "tie",              :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "netid"
    t.string   "email"
    t.string   "college"
    t.string   "year"
    t.integer  "rating"
    t.integer  "rank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
