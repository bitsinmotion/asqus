class CreatePollResponses < ActiveRecord::Migration
  def change
    create_table :poll_responses do |t|
      t.integer :user_id, :null => false
      t.integer :poll_question_id, :null => false
      t.integer :ordinal, :null => false
      t.string :free_response

      t.timestamps
    end
    add_index :poll_responses, [:user_id, :poll_question_id], :unique => true
    add_index :poll_responses, :poll_question_id
  end
end
