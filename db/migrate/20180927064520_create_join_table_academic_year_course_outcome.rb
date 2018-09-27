class CreateJoinTableAcademicYearCourseOutcome < ActiveRecord::Migration[5.2]
  def change
    create_join_table :academic_years, :course_outcomes do |t|
      t.index [:academic_year_id, :course_outcome_id], :name => 'acad_course_outcome'
      t.index [:course_outcome_id, :academic_year_id], :name => 'course_outcome_acad'
    end
  end
end
