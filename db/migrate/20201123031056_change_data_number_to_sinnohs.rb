class ChangeDataNumberToSinnohs < ActiveRecord::Migration[5.2]
  def change
    change_column :sinnohs, :number, :string
  end
end
