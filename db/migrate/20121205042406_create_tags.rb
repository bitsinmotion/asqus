class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag, :null => false
      t.string :context, :null => false, :default => 'main'
      t.string :taggable_type, :null => false 
      t.integer :taggable_id, :null => false

      t.timestamps
    end
    add_index :tags, [:tag, :context,:taggable_type,:taggable_id], :unique => true
    add_index :tags, [:taggable_type, :taggable_id]
  end
end
