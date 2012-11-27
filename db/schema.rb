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

ActiveRecord::Schema.define(:version => 20121127091629) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "congressional_districts", :force => true do |t|
    t.integer  "district_number", :null => false
    t.integer  "state_id",        :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "counties", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "state_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipalities", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "state_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "office_types", :force => true do |t|
    t.string   "description", :null => false
    t.string   "polity_type", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "offices", :force => true do |t|
    t.string   "name",        :null => false
    t.integer  "polity_id",   :null => false
    t.string   "polity_type", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "official_administrators", :force => true do |t|
    t.integer  "official_id", :null => false
    t.integer  "user_id",     :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "official_tenures", :force => true do |t|
    t.integer  "official_id", :null => false
    t.integer  "office_id",   :null => false
    t.date     "from_date",   :null => false
    t.date     "to_date",     :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "officials", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "poll_answers", :force => true do |t|
    t.string   "text"
    t.integer  "poll_question_id",                    :null => false
    t.integer  "ordinal",                             :null => false
    t.boolean  "free_response",    :default => false, :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "poll_answers", ["id", "ordinal"], :name => "index_poll_answers_on_id_and_ordinal", :unique => true
  add_index "poll_answers", ["poll_question_id"], :name => "index_poll_answers_on_poll_question_id"

  create_table "poll_questions", :force => true do |t|
    t.string   "text",       :null => false
    t.integer  "poll_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "poll_questions", ["poll_id"], :name => "index_poll_questions_on_poll_id"

  create_table "poll_responses", :force => true do |t|
    t.integer  "user_id",          :null => false
    t.integer  "poll_question_id", :null => false
    t.integer  "ordinal",          :null => false
    t.string   "free_response"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "poll_responses", ["poll_question_id"], :name => "index_poll_responses_on_poll_question_id"
  add_index "poll_responses", ["user_id", "poll_question_id"], :name => "index_poll_responses_on_user_id_and_poll_question_id", :unique => true

  create_table "poll_workflow_states", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "polls", :force => true do |t|
    t.string   "title",                                 :null => false
    t.text     "body"
    t.integer  "official_id",                           :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "poll_workflow_state_id", :default => 0, :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "state_house_districts", :force => true do |t|
    t.integer  "district_number", :null => false
    t.integer  "state_id",        :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "state_senate_districts", :force => true do |t|
    t.integer  "district_number", :null => false
    t.integer  "state_id",        :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name",         :null => false
    t.string   "abbreviation", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                     :default => "", :null => false
    t.string   "encrypted_password",        :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "state_id"
    t.integer  "municipality_id"
    t.integer  "county_id"
    t.integer  "congressional_district_id"
    t.integer  "state_senate_district_id"
    t.integer  "state_house_district_id"
    t.string   "current_location"
    t.date     "birth_date"
    t.string   "sex"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
