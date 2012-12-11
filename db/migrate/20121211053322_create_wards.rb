class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.integer :municipality_id, :null => false
      t.integer :ward_number, :null => false

      t.timestamps
    end
    add_index :wards, [:municipality_id, :ward_number], :unique => true
  end
end
