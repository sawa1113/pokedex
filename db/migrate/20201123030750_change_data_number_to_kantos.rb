class ChangeDataNumberToKantos < ActiveRecord::Migration[5.2]
  def change
    change_column :kantos, :number, :string
  end
end
