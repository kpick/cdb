class ModifyField < ActiveRecord::Migration[5.0]
  def change
  	remove_column :fields, :type, :integer  	
  	add_column :fields, :field_type, :integer
  end
end
