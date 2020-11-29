class AddNumberImageToUnovas < ActiveRecord::Migration[5.2]
  def change
    add_column :unovas, :number, :integer
    add_column :unovas, :image, :string
  end
end
