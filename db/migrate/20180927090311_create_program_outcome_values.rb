class CreateProgramOutcomeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :program_outcome_values do |t|
      t.float :value
      t.references :academic_year,
      t.references :program_outcome, index: {:name => "po"}

      t.timestamps
    end
  end
end
