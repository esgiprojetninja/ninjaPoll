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

ActiveRecord::Schema.define(version: 20170626180952) do

  create_table "answers", force: :cascade do |t|
    t.integer  "int_value"
    t.integer  "poll_question_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "poll_id"
    t.text     "text_value"
    t.index ["poll_id"], name: "index_answers_on_poll_id"
    t.index ["poll_question_id"], name: "index_answers_on_poll_question_id"
  end

  create_table "poll_questions", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "question_type"
  end

  create_table "poll_questions_polls", id: false, force: :cascade do |t|
    t.integer "poll_id",          null: false
    t.integer "poll_question_id", null: false
    t.index ["poll_id", "poll_question_id"], name: "index_poll_questions_polls_on_poll_id_and_poll_question_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string   "name"
    t.datetime "pub_date"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "active",      default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
