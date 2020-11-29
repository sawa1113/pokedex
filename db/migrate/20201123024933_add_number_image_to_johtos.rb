class AddNumberImageToJohtos < ActiveRecord::Migration[5.2]
  def change
    add_column :johtos, :number, :integer
    add_column :johtos, :image, :string
  end
end
