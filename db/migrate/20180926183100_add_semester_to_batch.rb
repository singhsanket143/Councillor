class AddSemesterToBatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :batches, :semester, foreign_key: true
  end
end
