class CreateJoinTableCourseProgramOutcome < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :program_outcomes do |t|
      t.index [:course_id, :program_outcome_id], :name => "course_po"
      t.index [:program_outcome_id, :course_id], :name => "po_course"
    end
  end
end
