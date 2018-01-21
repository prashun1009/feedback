class Feedback < ApplicationRecord
	validates :name, presence: true, length: { maximum: 20 }
	validates :description, presence: true
	validates :surname, presence: true
	validates :hobby, presence: true
	validates_length_of :description, minimum: 1, maximum:250, too_long: 'Your description must be below or equal to 250 words.'
	private

	def words_in_description
	  description.scan(/\w+/)
	end
end
