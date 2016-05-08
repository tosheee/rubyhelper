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

ActiveRecord::Schema.define(version: 20160507090848) do

  create_table "admin_rails_method_descriptions", force: :cascade do |t|
    t.integer  "rails_name_method_id"
    t.integer  "num_view"
    t.string   "lable_description"
    t.text     "full_method_description"
    t.string   "label_code"
    t.text     "method_code"
    t.string   "label_result"
    t.text     "result_code"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "admin_rails_name_methods", force: :cascade do |t|
    t.integer  "rails_name_structure_id"
    t.string   "name_method"
    t.text     "short_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "admin_rails_name_metods", force: :cascade do |t|
    t.string   "structure_element"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "admin_rails_name_structures", force: :cascade do |t|
    t.integer  "num_structure"
    t.string   "name_structure"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "admin_rails_structure_elements", force: :cascade do |t|
    t.string   "structure_element"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "admin_rails_structures", force: :cascade do |t|
    t.string   "element"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "num"
  end

  create_table "admin_ruby_name_classes", force: :cascade do |t|
    t.integer  "num_view"
    t.string   "name_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_ruby_name_method_full_descriptions", force: :cascade do |t|
    t.integer  "ruby_name_method_id"
    t.integer  "num_view"
    t.string   "label_description"
    t.text     "full_method_description"
    t.string   "label_code"
    t.text     "method_code"
    t.string   "label_result"
    t.text     "result_code"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "admin_ruby_name_methods", force: :cascade do |t|
    t.integer  "ruby_name_class_id"
    t.string   "name_method"
    t.text     "short_method_description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "admin_ruby_syntax_keyword_descriptions", force: :cascade do |t|
    t.integer  "ruby_syntax_name_keyword_id"
    t.integer  "num_view"
    t.string   "label_description"
    t.text     "full_keyword_description"
    t.string   "label_code"
    t.text     "keyword_code"
    t.string   "label_result"
    t.text     "result_code"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "admin_ruby_syntax_name_elements", force: :cascade do |t|
    t.integer  "num_view"
    t.string   "name_element"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "admin_ruby_syntax_name_keywords", force: :cascade do |t|
    t.integer  "admin_ruby_suntax_name_element_id"
    t.integer  "num_view"
    t.string   "name_keyword"
    t.text     "name_keyword_description"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "class_name_methods", force: :cascade do |t|
    t.integer  "type_inner_methods_id"
    t.string   "name_method"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

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
    t.text     "description_keyword"
  end

  create_table "type_inner_methods", force: :cascade do |t|
    t.string   "name_type_method"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
