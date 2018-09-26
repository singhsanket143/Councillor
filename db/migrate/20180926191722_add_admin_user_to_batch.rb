class AddAdminUserToBatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :batches, :admin_user, :foreign_key => true
  end
end
