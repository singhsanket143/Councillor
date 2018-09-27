class AddAcademicYearToCourseOutcomeValue < ActiveRecord::Migration[5.2]
  def change
    add_reference :course_outcome_values, :academic_year, foreign_key: true
  end
end
