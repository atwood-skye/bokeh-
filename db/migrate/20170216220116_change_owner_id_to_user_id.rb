class ChangeOwnerIdToUserId < ActiveRecord::Migration[5.0]
  def change

    remove_column :images, :owner_id, :integer
    add_column :images, :user_id, :integer
    remove_column :comments, :owner_id, :integer
    add_column :comments, :user_id, :integer
  end
end
