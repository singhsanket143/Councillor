class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :batches, :academicyear_id, :academic_year_id
  end
end
