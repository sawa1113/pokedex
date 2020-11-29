class ChangeDataNumberToKalos < ActiveRecord::Migration[5.2]
  def change
    change_column :kalos, :number, :string
  end
end
