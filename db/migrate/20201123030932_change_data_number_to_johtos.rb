class ChangeDataNumberToJohtos < ActiveRecord::Migration[5.2]
  def change
    change_column :johtos, :number, :string
  end
end
