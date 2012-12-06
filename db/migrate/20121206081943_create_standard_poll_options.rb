class CreateStandardPollOptions < ActiveRecord::Migration
  def change
    create_table :standard_poll_options do |t|
      t.integer :standard_poll_option_set_id, :null => false
      t.string :text, :null => false
      t.integer :value, :null => false

      t.timestamps
    end
    add_index :standard_poll_options, [:standard_poll_option_set_id, :text], :unique => true, :name => :uidx_std_poll_options_on_text
    add_index :standard_poll_options, [:standard_poll_option_set_id, :value], :unique => true, :name => :uidx_std_poll_options_on_value
  end
end
