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

ActiveRecord::Schema.define(version: 20160506161700) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "city"
    t.string   "country"
    t.date     "birthday"
    t.string   "about_info"
    t.integer  "order_number"
    t.string   "email"
    t.string   "group"
    t.boolean  "able_for_contact",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "own_gender"
    t.string   "search_for_gender"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "fond_img_forest_title"
    t.string   "fond_img_forest_alt_text"
    t.string   "form_name_text"
    t.string   "form_email_text"
    t.string   "text_on_submit_button"
    t.decimal  "price"
    t.string   "count_of_columns"
    t.string   "count_of_left_offsets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "me_constants", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "me_liqpays", force: :cascade do |t|
    t.integer  "me_number"
    t.string   "public_key"
    t.string   "private_key"
    t.string   "api_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_info_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "msg"
    t.string   "translit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.boolean  "payed"
    t.string   "name"
    t.string   "email"
    t.string   "akey"
    t.decimal  "sum_for_pay"
    t.string   "when_payed"
    t.string   "akey_payed"
    t.string   "pay_link"
    t.boolean  "sent_email_with_test", default: false
    t.boolean  "test_ended",           default: false
    t.boolean  "more_info_save",       default: false
    t.boolean  "able",                 default: false
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "page"
    t.string   "title_tag"
    t.string   "description_meta"
    t.string   "keywords_meta"
    t.string   "em"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "number_of_question"
    t.string   "title"
    t.integer  "test_id"
    t.boolean  "able",                           default: true
    t.string   "for_yes_answer_plus_1_point_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "number_of_test"
    t.string   "title"
    t.boolean  "able",           default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
