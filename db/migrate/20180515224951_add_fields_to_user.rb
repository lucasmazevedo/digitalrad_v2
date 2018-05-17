class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usertype, :integer
    add_column :users, :name, :string
    add_column :users, :document, :string
    add_column :users, :company, :string
    add_column :users, :address, :string
    add_column :users, :number, :string
    add_column :users, :neighborhood, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
  end
end
