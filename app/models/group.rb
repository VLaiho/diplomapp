class Group < ApplicationRecord
	validates :name, presence: true

	has_many   :students
	belongs_to :course
end
