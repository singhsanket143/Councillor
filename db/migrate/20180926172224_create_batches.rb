class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.string :batch_code
      t.references :academicyear, foreign_key: true

      t.timestamps
    end
  end
end
