class AddNumberImageToGalars < ActiveRecord::Migration[5.2]
  def change
    add_column :galars, :number, :integer
    add_column :galars, :image, :string
  end
end
