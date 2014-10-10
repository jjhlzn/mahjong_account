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

ActiveRecord::Schema.define(version: 20141009084021) do

  create_table "games", force: true do |t|
    t.string   "player1"
    t.string   "player2"
    t.string   "player3"
    t.string   "player4"
    t.integer  "chipCount"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.integer  "game_id"
    t.integer   "player1Win"
    t.integer   "player2Win"
    t.integer   "player3Win"
    t.integer   "player4Win"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
