class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :company, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.references :student, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.timestamps
    end
  end
end
