class AddFbFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_location, :string
    add_column :users, :birth_date, :date
    add_column :users, :sex, :string
  end
end
