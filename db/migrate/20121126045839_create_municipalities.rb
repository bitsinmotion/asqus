class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :name, :null => false
      t.integer :state_id, :null => false
      t.timestamps
    end
    add_index :municipalities, [:state_id, :name], :unique => true
  end
end
