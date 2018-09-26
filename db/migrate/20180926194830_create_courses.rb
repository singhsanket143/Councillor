class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :title
      t.references :semester

      t.timestamps
    end
  end
end
