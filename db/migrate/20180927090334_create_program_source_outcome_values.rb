class CreateProgramSourceOutcomeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :program_source_outcome_values do |t|
      t.float :value
      t.references :academic_year
      t.references :program_source_outcome, index: {:name => "pso"}

      t.timestamps
    end
  end
end
