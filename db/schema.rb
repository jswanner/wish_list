# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091203045710) do

  create_table "attendings", :force => true do |t|
    t.integer  "event_id",     :null => false
    t.integer  "user_id",      :null => false
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendings", ["event_id", "user_id"], :name => "index_attendings_on_event_id_and_user_id", :unique => true

  create_table "events", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                    :null => false
    t.string   "email",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "wishes_count", :default => 0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "wishes", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.string   "title",       :null => false
    t.text     "description"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
