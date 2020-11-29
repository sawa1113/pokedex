class AddNumberImageToKalos < ActiveRecord::Migration[5.2]
  def change
    add_column :kalos, :number, :integer
    add_column :kalos, :image, :string
  end
end
