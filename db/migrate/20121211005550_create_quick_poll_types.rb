class CreateQuickPollTypes < ActiveRecord::Migration
  def change
    create_table :quick_poll_types do |t|
      t.string :type, :null => false

      t.timestamps
    end
    add_index :quick_poll_types, :type, :unique => true
  end
end
