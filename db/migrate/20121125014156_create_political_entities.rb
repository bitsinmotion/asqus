class CreatePoliticalEntities < ActiveRecord::Migration
  def change
    create_table :political_entities do |t|
      t.string :name
      t.integer :political_entity_type_id
      t.integer :parent_political_entity_id

      t.timestamps
    end
  end
end
