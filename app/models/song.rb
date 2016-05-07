class Song < ActiveRecord::Base
	validates :length_in_seconds, numericality: { greater_than_or_equal_to: 0 }, presence: true
	validates :title, presence: true
end
