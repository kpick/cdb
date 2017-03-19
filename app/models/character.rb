class Character < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_and_belongs_to_many :sections, join_table: 'characters_sections'
  has_and_belongs_to_many :skills, join_table: 'characters_skills'
end
