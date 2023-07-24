class AddImageToNews < ActiveRecord::Migration[7.0]
  def change
    add_column :news, :image, :string
  end
end
