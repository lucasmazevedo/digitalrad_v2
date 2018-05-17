class AddSlugToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :slug, :string
  end
end
