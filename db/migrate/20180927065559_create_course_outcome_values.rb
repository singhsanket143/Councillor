class CreateCourseOutcomeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :course_outcome_values do |t|
      t.references :course
      t.references :course_outcome
      t.float :value

      t.timestamps
    end
  end
end
