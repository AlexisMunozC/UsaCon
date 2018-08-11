class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :student, null: false
      t.references :vacant, null: false
      t.boolean :contacted, default: false
      t.timestamps
    end
  end
end
