class AddNumberImageToHoenns < ActiveRecord::Migration[5.2]
  def change
    add_column :hoenns, :number, :integer
    add_column :hoenns, :image, :string
  end
end
