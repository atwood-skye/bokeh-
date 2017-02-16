class AddCommentsToImages < ActiveRecord::Migration[5.0]
  def change

    add_column :images, :comments, :string
  end
end
