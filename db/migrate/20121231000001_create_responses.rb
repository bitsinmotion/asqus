class CreateResponses < ActiveRecord::Migration
  def change

    create_table "responses", :force => true do |t|
      t.text     "body"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
      t.integer  "question_id"
      t.integer  "user_id"
    end

    add_index "responses", ["question_id", "created_at"], :name => "index_responses_on_question_id_and_created_at"
    add_index "responses", ["user_id", "created_at"], :name => "index_responses_on_user_id_and_created_at"

  end

end
