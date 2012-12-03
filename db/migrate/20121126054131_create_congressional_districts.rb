class CreateCongressionalDistricts < ActiveRecord::Migration
  def change
    create_table :congressional_districts do |t|
      t.integer :district_number, :null => false
      t.integer :state_id, :null => false

      t.timestamps
    end
    add_index :congressional_districts, [:state_id, :district_number], :unique => true
  end
end
