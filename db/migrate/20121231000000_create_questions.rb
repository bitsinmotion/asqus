class CreateQuestions < ActiveRecord::Migration
  def change

    create_table "questions", :force => true do |t|
      t.string   "title"
      t.text     "body"
      t.datetime "created_at",        :null => false
      t.datetime "updated_at",        :null => false
      t.integer  "user_id"
      t.integer  "up_cache"
      t.integer  "down_cache"
      t.float    "rank_value"
      t.integer  "official_id"
      t.float    "controversy_value"
    end

    add_index "questions", ["official_id", "created_at"], :name => "index_questions_on_official_id_and_created_at"
    add_index "questions", ["user_id", "created_at"], :name => "index_questions_on_user_id_and_created_at"

  end

end
