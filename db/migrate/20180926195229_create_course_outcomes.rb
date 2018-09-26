class CreateCourseOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :course_outcomes do |t|
      t.string :code

      t.timestamps
    end
  end
end
