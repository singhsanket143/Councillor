class CreateJoinTableCourseProgramSourceOutcome < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :program_source_outcomes do |t|
      t.index [:course_id, :program_source_outcome_id], :name => "course_pso"
      t.index [:program_source_outcome_id, :course_id], :name => "pso_course"
    end
  end
end
