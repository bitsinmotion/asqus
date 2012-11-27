class CreatePollQuestions < ActiveRecord::Migration
  def change
    create_table :poll_questions do |t|
      t.string :text, :null => false
      t.integer :poll_id, :null => false

      t.timestamps
    end
    add_index :poll_questions,:poll_id
  end
end
