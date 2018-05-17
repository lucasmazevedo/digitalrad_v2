class CreateStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :structures do |t|
      t.string :title
      t.string :subtitle
      t.string :photo
      t.integer :status

      t.timestamps
    end
  end
end
