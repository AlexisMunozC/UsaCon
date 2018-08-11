class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :company, null: false
      t.references :student, null: false
      t.timestamps
    end
  end
end
