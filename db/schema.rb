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

ActiveRecord::Schema.define(:version => 20131108234435) do

  create_table "cards", :force => true do |t|
    t.string  "question1"
    t.string  "question2"
    t.string  "answer"
    t.string  "hint"
    t.string  "operator"
    t.integer "deck_id"
  end

  create_table "decks", :force => true do |t|
    t.string  "name"
    t.integer "level"
    t.integer "grade_id"
  end

  create_table "grades", :force => true do |t|
    t.string "name"
  end

  create_table "guesses", :force => true do |t|
    t.integer "answer"
    t.boolean "correct"
    t.integer "round_id"
    t.integer "card_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "deck_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
