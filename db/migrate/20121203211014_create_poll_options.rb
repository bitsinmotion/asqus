class CreatePollOptions < ActiveRecord::Migration
  def change
    create_table :poll_options do |t|
      t.string :text
      t.integer :poll_question_id
      t.integer :value

      t.timestamps
    end
    add_index :poll_options, [:poll_question_id,:value], :unique => true
  end
end
