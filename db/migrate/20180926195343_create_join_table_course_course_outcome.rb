class CreateJoinTableCourseCourseOutcome < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :course_outcomes do |t|
      t.index [:course_id, :course_outcome_id], :name => "c_co"
      t.index [:course_outcome_id, :course_id], :name => "co_c"
    end
  end
end
