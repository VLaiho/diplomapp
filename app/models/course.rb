class Course < ApplicationRecord
  	validates :name, presence: true

  	has_one :teacher
  	has_one :group
end
