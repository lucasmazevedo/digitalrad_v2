class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :speciality
      t.text :resume
      t.string :photo
      t.string :lattes
      t.integer :status

      t.timestamps
    end
  end
end
