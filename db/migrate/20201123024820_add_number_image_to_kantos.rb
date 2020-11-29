class AddNumberImageToKantos < ActiveRecord::Migration[5.2]
  def change
    add_column :kantos, :number, :integer
    add_column :kantos, :image, :string
  end
end
