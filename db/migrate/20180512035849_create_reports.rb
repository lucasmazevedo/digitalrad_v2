class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :content
      t.string :hero_image
      t.string :slug
      t.integer :status

      t.timestamps
    end
  end
end
