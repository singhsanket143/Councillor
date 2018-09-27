class AcademicYear < ApplicationRecord
  has_many :batches
  has_many :users
  has_many :semesters
  has_and_belongs_to_many :course_outcomes
  has_and_belongs_to_many :program_outcomes
  has_and_belongs_to_many :program_source_outcomes
  has_many :course_outcome_values
  before_save :save_course_outcomes
  def to_s
    self.start_year.to_s + '-' + self.end_year.to_s
  end

  def save_course_outcomes
    outcomes = CourseOutcome.all
    self.course_outcomes = outcomes
    self.course_outcomes
  end
end
