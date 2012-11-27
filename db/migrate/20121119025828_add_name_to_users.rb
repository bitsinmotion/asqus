class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :state_id, :integer
    add_column :users, :municipality_id, :integer
    add_column :users, :county_id, :integer
    add_column :users, :congressional_district_id, :integer
    add_column :users, :state_senate_district_id, :integer
    add_column :users, :state_house_district_id, :integer
  end
end
