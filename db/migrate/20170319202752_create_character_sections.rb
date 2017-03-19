class CreateCharacterSections < ActiveRecord::Migration[5.0]
  def change
    create_join_table :characters, :sections do |t|
      t.index :character_id
      t.index :section_id
      t.string :value
    end
  end
end
