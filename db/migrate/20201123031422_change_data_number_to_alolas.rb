class ChangeDataNumberToAlolas < ActiveRecord::Migration[5.2]
  def change
    change_column :alolas, :number, :string
  end
end
