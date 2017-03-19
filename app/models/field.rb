class Field < ApplicationRecord
	enum field_type: [:number, :text, :image]
end
