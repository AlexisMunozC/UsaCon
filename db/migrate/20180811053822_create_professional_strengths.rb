class CreateProfessionalStrengths < ActiveRecord::Migration
  def change
    create_table :professional_strengths do |t|
      t.references :departament, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.text :description, null: false
      t.timestamps
    end
  end
end
