class CreateHoenns < ActiveRecord::Migration[5.2]
  def change
    create_table :hoenns do |t|
      t.string :name
      t.string :type_1
      t.string :type_2
      t.string :height
      t.string :weight
      t.string :description

      t.timestamps
    end
  end
end
