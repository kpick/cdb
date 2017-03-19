class CreateCharacterSkills < ActiveRecord::Migration[5.0]
  def change
    create_join_table :characters, :skills do |t|
      t.index :character_id
      t.index :skill_id
      t.string :value
    end
  end
end
