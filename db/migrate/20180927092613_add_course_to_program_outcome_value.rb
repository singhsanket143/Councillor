class AddCourseToProgramOutcomeValue < ActiveRecord::Migration[5.2]
  def change
    add_reference :program_outcome_values, :course, foreign_key: true
  end
end
