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

ActiveRecord::Schema.define(version: 20160327162406) do

  create_table "description_keywords", force: :cascade do |t|
    t.integer  "syntax_keyword_rubies_id"
    t.text     "description"
    t.text     "code"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "description_title"
    t.string   "code_title"
  end

  create_table "index_ruby_syntaxes", force: :cascade do |t|
    t.string   "index_title_ruby"
    t.string   "index_title_description_ruby"
    t.text     "index_description"
    t.text     "ruby_urls"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "syntax_elements_rubies", force: :cascade do |t|
    t.string   "element"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "syntax_keyword_rubies", force: :cascade do |t|
    t.integer  "syntax_elements_rubies_id"
    t.string   "syntax_keyword"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "username"
    t.string   "role",                   default: "guest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
