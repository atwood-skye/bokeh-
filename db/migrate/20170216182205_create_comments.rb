class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|

      t.column :owner_id, :integer
      t.column :image_id, :integer
      t.column :content, :string

    end
  end
end
