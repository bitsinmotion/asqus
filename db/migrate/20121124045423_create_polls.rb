class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
      t.text :body
      t.integer :official_id
      t.timestamps
    end
  end
end
