class CourseOutcomeValue < ApplicationRecord
  belongs_to :course
  belongs_to :course_outcome
  belongs_to :academic_year
end
