class ChangeDataNumberToHoenns < ActiveRecord::Migration[5.2]
  def change
    change_column :hoenns, :number, :string
  end
end
