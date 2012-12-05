class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, :null => false
      t.text :body
      t.datetime :start_time, :null => false
      t.datetime :end_time, :null => false
      t.integer :issue_id, :null => false
      t.integer :poll_workflow_state_id, :null => false, :default => 0
      t.timestamps
    end
    add_index :polls, :issue_id
    add_index :polls, :start_time
    add_index :polls, :end_time
  end
end
