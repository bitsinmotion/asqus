class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :name, :null => false
      t.string :email
      t.string :photo_extension

      t.timestamps
    end
  end
end
