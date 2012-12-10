class CreateQuickPollResponses < ActiveRecord::Migration
  def change
    create_table :quick_poll_responses do |t|
      t.integer :quick_poll_id
      t.integer :user_id
      t.integer :value

      t.timestamps
    end
    add_index :quick_poll_responses, [:quick_poll_id, :user_id], :unique => true
    add_index :quick_poll_responses, :user_id
  end
end
