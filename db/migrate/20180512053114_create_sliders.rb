class CreateSliders < ActiveRecord::Migration[5.2]
  def change
    create_table :sliders do |t|
      t.string :title
      t.text :subtitle
      t.string :link
      t.string :hero_image
      t.string :slug
      t.integer :status

      t.timestamps
    end
  end
end
