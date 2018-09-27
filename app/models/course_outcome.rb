class CourseOutcome < ApplicationRecord
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :academic_year
end
