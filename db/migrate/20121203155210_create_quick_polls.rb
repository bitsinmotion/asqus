class CreateQuickPolls < ActiveRecord::Migration
  def change
    create_table :quick_polls do |t|
      t.string :title, :null => false
      t.text :body
      t.datetime :start_time, :null => false
      t.datetime :end_time, :null => false
      t.integer :issue_id, :null => false
      t.integer :poll_workflow_state, :null => false, :default => 0

      t.timestamps
    end
    add_index :quick_polls, :issue_id
    add_index :quick_polls, :start_time
    add_index :quick_polls, :end_time
  end
end
