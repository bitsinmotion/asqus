class CreateOfficialAdministrators < ActiveRecord::Migration
  def change
    create_table :official_administrators do |t|
      t.integer :official_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
