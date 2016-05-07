class Song < ActiveRecord::Base
	has_and_belongs_to_many :set_lists

	validates :length_in_seconds, numericality: { greater_than_or_equal_to: 0 }, presence: true
	validates :title, presence: true
end
