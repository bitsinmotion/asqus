class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name, :null => false
      t.integer :office_type_id, :null => false
      t.integer :polity_id, :null => false
      t.string :polity_type, :null => false
      t.timestamps
    end
  end
end
