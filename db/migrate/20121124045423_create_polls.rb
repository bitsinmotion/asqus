class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, :null => false
      t.text :body
      t.datetime :start_time, :null => false
      t.datetime :end_time, :null => false
      t.integer :poller_id, :null => false
      t.string :poller_type, :null => false
      t.integer :poll_workflow_state_id, :null => false, :default => 0
      t.timestamps
    end
    add_index :polls, [:poller_type, :poller_id]
  end
end
