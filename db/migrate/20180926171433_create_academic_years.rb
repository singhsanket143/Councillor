class CreateAcademicYears < ActiveRecord::Migration[5.2]
  def change
    create_table :academic_years do |t|
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
