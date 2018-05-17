class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :logo
      t.string :link
      t.string :slug
      t.integer :status

      t.timestamps
    end
  end
end
