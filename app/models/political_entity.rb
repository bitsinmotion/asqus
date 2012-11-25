class PoliticalEntity < ActiveRecord::Base
  belongs_to :political_entity_type
  belongs_to :parent, :class_name => "PoliticalEntity", :foreign_key => "parent_political_entity_id"
  attr_accessible :name, :parent_political_entity_id, :political_entity_type_id
 


end
