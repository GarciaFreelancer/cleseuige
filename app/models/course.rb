class Course < ApplicationRecord
  belongs_to :category

  has_many :classcourses
end
