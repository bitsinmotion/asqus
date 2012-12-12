class CreateQuickPollTypes < ActiveRecord::Migration
  def change
    create_table :quick_poll_types do |t|
      t.string :name, :null => false

      t.timestamps
    end
    add_index :quick_poll_types, :name, :unique => true
  end
end
