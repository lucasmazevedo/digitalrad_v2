class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.integer :status

      t.timestamps
    end
  end
end
