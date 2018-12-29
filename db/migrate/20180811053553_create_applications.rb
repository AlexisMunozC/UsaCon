class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :student, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.references :vacant, null: false
      t.boolean :contacted, default: false
      t.timestamps
    end
  end
end
