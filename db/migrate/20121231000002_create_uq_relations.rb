class CreateUqRelations < ActiveRecord::Migration
  def change

    create_table "uq_relations", :force => true do |t|
      t.integer  "user_id", :null => false
      t.integer  "question_id", :null => false
      t.boolean  "yaynay", :null => false
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
    end

    add_index "uq_relations", ["question_id", "user_id"], :name => "index_uq_relations_on_question_id_and_user_id", :unique => true
    add_index "uq_relations", ["question_id"], :name => "index_uq_relations_on_question_id"
    add_index "uq_relations", ["user_id"], :name => "index_uq_relations_on_user_id"

  end

end