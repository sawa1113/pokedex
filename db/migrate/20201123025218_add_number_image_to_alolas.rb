class AddNumberImageToAlolas < ActiveRecord::Migration[5.2]
  def change
    add_column :alolas, :number, :integer
    add_column :alolas, :image, :string
  end
end
