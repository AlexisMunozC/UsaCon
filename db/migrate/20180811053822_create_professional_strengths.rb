class CreateProfessionalStrengths < ActiveRecord::Migration
  def change
    create_table :professional_strengths do |t|
      t.references :departament, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
