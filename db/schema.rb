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

ActiveRecord::Schema.define(:version => 20130910184047) do

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "claim_places", :force => true do |t|
    t.integer  "user_id",       :default => 0,     :null => false
    t.string   "address",       :default => "",    :null => false
    t.string   "storeName",     :default => "",    :null => false
    t.string   "ownerEmail",    :default => ""
    t.string   "ownerPhone",    :default => ""
    t.text     "description",   :default => ""
    t.float    "latitude",      :default => 0.0
    t.float    "longitude",     :default => 0.0
    t.boolean  "owner",         :default => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "ownerWebsite"
    t.integer  "owner_user_id"
  end

  create_table "products", :force => true do |t|
    t.string   "productName",    :default => "",   :null => false
    t.float    "fragrance"
    t.float    "flavor"
    t.float    "aftertaste"
    t.float    "acidity"
    t.float    "body"
    t.float    "uniformity",     :default => 10.0
    t.float    "balance"
    t.float    "cleanCup",       :default => 10.0
    t.float    "sweetness",      :default => 10.0
    t.float    "overall"
    t.float    "taint",          :default => 0.0
    t.float    "fault",          :default => 0.0
    t.float    "totalScore"
    t.integer  "owner_user_id",  :default => 0,    :null => false
    t.text     "description"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "claim_place_id"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "is_admin",               :default => false
    t.string   "username"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
