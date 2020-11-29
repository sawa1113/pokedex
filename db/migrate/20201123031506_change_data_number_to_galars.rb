class ChangeDataNumberToGalars < ActiveRecord::Migration[5.2]
  def change
    change_column :galars, :number, :string
  end
end
