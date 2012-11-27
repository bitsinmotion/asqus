class CreateOfficeTypes < ActiveRecord::Migration
  def change
    create_table :office_types do |t|
      t.string :description, :null => false
      t.string :polity_type, :null => false
      t.timestamps
    end
  end
end
