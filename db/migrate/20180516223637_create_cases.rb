class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
