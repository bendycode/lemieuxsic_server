class SetList < ActiveRecord::Base
	has_and_belongs_to_many :songs
	validates :target_length_in_seconds, 
		numericality: { greater_than_or_equal_to: 0 } 
	validates :name, presence: true
end
