class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.text :content
      t.string :link
      t.string :slug
      t.integer :status

      t.timestamps
    end
  end
end
