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

ActiveRecord::Schema.define(:version => 20121125130750) do

  create_table "exps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "owner"
  end

  create_table "exps_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "exp_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationship1s", :force => true do |t|
    t.integer  "expid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationship1s", ["expid"], :name => "index_relationship1s_on_expid", :unique => true

  create_table "relationship2s", :force => true do |t|
    t.integer  "userid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationship2s", ["userid"], :name => "index_relationship2s_on_userid", :unique => true

  create_table "toys", :force => true do |t|
    t.string   "name"
    t.string   "owner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "toys_users", :id => false, :force => true do |t|
    t.integer "toy_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
