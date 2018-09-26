class AddAcademicYearToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :academic_year, foreign_key: true
  end
end
