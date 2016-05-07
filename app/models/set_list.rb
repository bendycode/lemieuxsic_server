class SetList < ActiveRecord::Base
	validates :target_length_in_seconds, 
		numericality: { greater_than_or_equal_to: 0 } 
	validates :name, presence: true
end
