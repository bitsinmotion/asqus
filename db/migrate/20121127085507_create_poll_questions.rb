class CreatePollQuestions < ActiveRecord::Migration
  def change
    create_table :poll_questions do |t|
      t.integer :poll_id, :null => false
      t.integer :ordinal, :null => false, :default => 0
      t.string :text, :null => false

      t.timestamps
    end
    add_index :poll_questions,[:poll_id, :ordinal], :unique=>true
  end
end
