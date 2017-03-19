class Section < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :characters
  has_one :field
end
