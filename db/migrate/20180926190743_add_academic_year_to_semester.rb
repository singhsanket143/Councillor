class AddAcademicYearToSemester < ActiveRecord::Migration[5.2]
  def change
    add_reference :semesters, :academic_year, foreign_key: true
  end
end
