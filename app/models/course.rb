class Course < ApplicationRecord
  belongs_to :semester
  has_and_belongs_to_many :course_outcomes
  has_and_belongs_to_many :program_outcomes
  has_and_belongs_to_many :program_source_outcomes
  accepts_nested_attributes_for :course_outcomes
  has_many :course_outcome_values
  has_many :program_source_outcome_values
  has_many :program_outcome_values
  before_save :save_course_outcomes
  before_save :save_program_outcomes
  before_save :save_program_source_outcomes
  def save_course_outcomes
    outcomes = CourseOutcome.all
    self.course_outcomes = outcomes
    self.course_outcomes
  end
  def save_program_outcomes
    outcomes = ProgramOutcome.all
    self.program_outcomes = outcomes
    self.program_outcomes
  end
  def save_program_source_outcomes
    outcomes = ProgramSourceOutcome.all
    self.program_source_outcomes = outcomes
    self.program_source_outcomes
  end
end
