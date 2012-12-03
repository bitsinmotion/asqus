class CreateOfficialTenures < ActiveRecord::Migration
  def change
    create_table :official_tenures do |t|
      t.integer :official_id, :null => false
      t.integer :office_id, :null => false
      t.date :from_date, :null => false
      t.date :to_date, :null =>false

      t.timestamps
    end
    add_index :official_tenures, :office_id
    add_index :official_tenures, :official_id
    add_index :official_tenures, :from_date
    add_index :official_tenures, :to_date
  end
end
