class RemoveCommentsFromImage < ActiveRecord::Migration[5.0]
  def change

    remove_column :images, :comments, :string
  end
end
