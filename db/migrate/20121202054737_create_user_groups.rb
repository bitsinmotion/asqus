class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.integer :user_id, :null => false
      t.integer :group_id, :null => false
      t.string :group_type, :null => false
      t.string :role, :null => false, :default => 'member'

      t.timestamps
    end
    add_index :user_groups, [:user_id, :group_id, :group_type], :unique => true
    add_index :user_groups, :group_id
  end
end
