class Course < ApplicationRecord
  belongs_to :semester
  has_and_belongs_to_many :course_outcomes
  accepts_nested_attributes_for :course_outcomes

  before_save :save_course_outcomes

  def save_course_outcomes
    outcomes = CourseOutcome.all
    self.course_outcomes = outcomes
    self.course_outcomes
  end
end
