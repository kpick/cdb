class CharacterSkill < ApplicationRecord
  belongs_to :character
  belongs_to :rule
end
