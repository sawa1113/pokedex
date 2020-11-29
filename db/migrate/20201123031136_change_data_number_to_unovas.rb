class ChangeDataNumberToUnovas < ActiveRecord::Migration[5.2]
  def change
    change_column :unovas, :number, :string
  end
end
