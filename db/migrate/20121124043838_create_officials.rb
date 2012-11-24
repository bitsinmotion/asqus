class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
