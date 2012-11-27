class CreatePollAnswers < ActiveRecord::Migration
  def change
    create_table :poll_answers do |t|
      t.string :text
      t.integer :poll_question_id, :null => false
      t.integer :ordinal, :null => false
      t.boolean :free_response, :null => false, :default => false

      t.timestamps
    end
    add_index :poll_answers, [:id, :ordinal], :unique => true
    add_index :poll_answers, :poll_question_id

  end
end
