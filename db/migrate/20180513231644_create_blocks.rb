class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.references :page, foreign_key: true
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
