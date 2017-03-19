class MoveTextField < ActiveRecord::Migration[5.0]
  def change
  	remove_column :characters_sections, :value, :string
  	remove_column :sections, :section_type, :string  	
  	add_column :sections, :value, :string
  end
end
