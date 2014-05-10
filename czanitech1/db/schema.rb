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

ActiveRecord::Schema.define(version: 20131212155104) do

  create_table "customerchats", force: true do |t|
    t.string   "chattext"
    t.string   "chataux"
    t.integer  "producer_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "script_id"
  end

  create_table "movielinks", force: true do |t|
    t.string   "moviename"
    t.text     "movielink"
    t.text     "moviedescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "myimages", force: true do |t|
    t.string   "image_name"
    t.text     "image_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "user_id"
    t.boolean  "image_hidden"
  end

  create_table "projstatuses", force: true do |t|
    t.string   "statusname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ordertoshow"
    t.string   "color"
  end

  create_table "pymtreceiveds", force: true do |t|
    t.decimal  "amount"
    t.integer  "project_id"
    t.string   "control_1"
    t.string   "control_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pymts", force: true do |t|
    t.decimal  "order_to_show"
    t.text     "pymt_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_requesting_pymt"
  end

  create_table "scripts", force: true do |t|
    t.string   "project",                  default: "", null: false
    t.text     "notes",                    default: "", null: false
    t.text     "step1",                    default: "", null: false
    t.text     "step2",                    default: "", null: false
    t.text     "step3",                    default: "", null: false
    t.text     "step4",                    default: "", null: false
    t.text     "step5",                    default: "", null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "moviepath1"
    t.string   "moviepath2"
    t.string   "moviepath3"
    t.integer  "movielinkid1"
    t.integer  "movielinkid2"
    t.integer  "status"
    t.text     "chat_history", limit: 255
    t.string   "chat_entry"
    t.string   "usertype"
    t.integer  "pymt_id"
  end

  create_table "sendmessages", force: true do |t|
    t.string   "name",       default: "", null: false
    t.string   "email",      default: "", null: false
    t.text     "message",    default: "", null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.string   "company",                default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adminlevel"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
