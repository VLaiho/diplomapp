class Course < ApplicationRecord
  	has_one :teacher
  	has_one :group
end
