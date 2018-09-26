class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :enrollment_no, :string
    add_column :users, :year, :integer
    add_column :users, :group, :string
    add_column :users, :remark, :string, default: 'Regular'
    add_column :users, :contact, :string
    add_column :users, :cet_roll_no, :string
    add_column :users, :cet_rank, :integer
    add_column :users, :fathers_name, :string
    add_column :users, :mothers_name, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :pcode, :integer, default: 027
    add_column :users, :programme, :string, default: 'BTECH'
    add_column :users, :institute_code, :integer, default: 964
    add_column :users, :address, :text
    add_column :users, :fathers_profession, :string
    add_column :users, :category, :string
  end
end
