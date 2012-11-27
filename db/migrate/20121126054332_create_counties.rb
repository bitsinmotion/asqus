class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name, :null => false
      t.integer :state_id, :null => false

      t.timestamps
    end
  end
end
