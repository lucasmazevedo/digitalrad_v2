class AddSlugToStaff < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :slug, :string
  end
end
