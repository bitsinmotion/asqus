class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :name, :null => false
      t.string :email

      t.timestamps
    end
  end
end
