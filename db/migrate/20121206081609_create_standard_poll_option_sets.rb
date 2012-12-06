class CreateStandardPollOptionSets < ActiveRecord::Migration
  def change
    create_table :standard_poll_option_sets do |t|
      t.string :name, :null => false

      t.timestamps
    end
  add_index :standard_poll_option_sets, :name, :unique => true, :name => :idx_std_poll_option_sets_on_name
  end
end
