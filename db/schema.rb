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

ActiveRecord::Schema.define(:version => 20130615103024) do

  create_table "claim_places", :force => true do |t|
    t.string   "address",                      :default => "",    :null => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.integer  "userid",                       :default => 0,     :null => false
    t.string   "storeName",                    :default => "",    :null => false
    t.string   "ownerEmail",                   :default => ""
    t.integer  "ownerPhone",    :limit => 255, :default => 0
    t.string   "description",                  :default => ""
    t.float    "latitude",                     :default => 0.0
    t.float    "longitude",                    :default => 0.0
    t.boolean  "owner",                        :default => false
    t.string   "ownerWebsite"
    t.integer  "owner_user_id"
  end

  create_table "models", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "models", ["email"], :name => "index_models_on_email", :unique => true
  add_index "models", ["reset_password_token"], :name => "index_models_on_reset_password_token", :unique => true

  create_table "products", :force => true do |t|
    t.string   "productName",   :default => "", :null => false
    t.integer  "fragrance"
    t.integer  "flavor"
    t.integer  "aftertaste"
    t.integer  "acidity"
    t.integer  "body"
    t.integer  "uniformity",    :default => 10
    t.integer  "balance"
    t.integer  "cleanCup",      :default => 10
    t.integer  "sweetness",     :default => 10
    t.integer  "overall"
    t.integer  "taint",         :default => 0
    t.integer  "fault",         :default => 0
    t.integer  "totalScore"
    t.integer  "owner_user_id", :default => 0,  :null => false
    t.text     "description"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
