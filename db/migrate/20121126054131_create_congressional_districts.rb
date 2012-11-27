class CreateCongressionalDistricts < ActiveRecord::Migration
  def change
    create_table :congressional_districts do |t|
      t.integer :district_number, :null => false
      t.integer :state_id, :null => false

      t.timestamps
    end
  end
end
