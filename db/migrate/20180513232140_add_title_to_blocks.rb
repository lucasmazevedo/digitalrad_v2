class AddTitleToBlocks < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :title, :string
    add_column :blocks, :slug, :string
  end
end
