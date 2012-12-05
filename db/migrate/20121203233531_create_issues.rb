class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :poller_type
      t.integer :poller_id

      t.timestamps
    end
    add_index :issues, [:poller_type, :poller_id, :title], :unique => true
  end
end
