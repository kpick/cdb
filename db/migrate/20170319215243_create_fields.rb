class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :type
      t.timestamps
    end
    add_column :sections, :field_id, :integer
  end
end
