class CreateStateSenateDistricts < ActiveRecord::Migration
  def change
    create_table :state_senate_districts do |t|
      t.integer :district_number, :null => false
      t.integer :state_id, :null => false

      t.timestamps
    end
  end
end
