class CreatePoliticalEntityTypes < ActiveRecord::Migration
  def change
    create_table :political_entity_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
