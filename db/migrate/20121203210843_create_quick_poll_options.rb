class CreateQuickPollOptions < ActiveRecord::Migration
  def change
    create_table :quick_poll_options do |t|
      t.string :text
      t.integer :quick_poll_id
      t.integer :value

      t.timestamps
    end
  add_index :quick_poll_options, [:quick_poll_id, :value], :unique => true
  end
end
