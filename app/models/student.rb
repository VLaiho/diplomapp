class Student < ApplicationRecord
	validates :name, presence: true

	belongs_to :group
end
