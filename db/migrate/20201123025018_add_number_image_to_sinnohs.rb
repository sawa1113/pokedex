class AddNumberImageToSinnohs < ActiveRecord::Migration[5.2]
  def change
    add_column :sinnohs, :number, :integer
    add_column :sinnohs, :image, :string
  end
end
