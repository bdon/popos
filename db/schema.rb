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

ActiveRecord::Schema.define(:version => 20130709021344) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "places", :force => true do |t|
    t.string   "name"
    t.string   "name_display"
    t.string   "address"
    t.string   "category"
    t.string   "popos_category"
    t.string   "neighborhood"
    t.text     "description"
    t.string   "photo_url"
    t.date     "year_built"
    t.boolean  "reject"
    t.text     "reject_reason"
    t.string   "reject_auth"
    t.decimal  "latitude",                           :precision => 10, :scale => 6
    t.decimal  "longitude",                          :precision => 10, :scale => 6
    t.integer  "route_id"
    t.integer  "route_order"
    t.boolean  "open"
    t.text     "open_hours",          :limit => 255
    t.string   "open_days"
    t.string   "open_notes"
    t.boolean  "seating"
    t.boolean  "restrooms"
    t.boolean  "wifi"
    t.boolean  "views"
    t.boolean  "food"
    t.boolean  "indoor"
    t.boolean  "exercise"
    t.boolean  "art"
    t.boolean  "dogs"
    t.boolean  "playground"
    t.text     "seating_notes"
    t.text     "restrooms_notes"
    t.text     "wifi_notes"
    t.text     "views_notes"
    t.text     "food_notes"
    t.text     "exercise_notes"
    t.text     "art_notes"
    t.text     "dogs_notes"
    t.text     "playground_notes"
    t.text     "transportation"
    t.integer  "popos_id_spur"
    t.string   "popos_rating_spur"
    t.boolean  "popos_downtown_plan"
    t.text     "notes"
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
  end

end
