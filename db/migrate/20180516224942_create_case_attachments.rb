class CreateCaseAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :case_attachments do |t|
      t.integer :case_id
      t.string :photo

      t.timestamps
    end
  end
end
