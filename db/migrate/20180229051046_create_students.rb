class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
        
      t.string :email, null: false
      t.string :password_encrypted, null: false

      t.string :control_number, null: false
      t.string :CURP, null: false
      t.string :name, null: false
      t.string :last_name, null: false
      t.string :mother_last_name, null: false
      t.references :departament, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.references :group, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.string :phone_number
      t.string :zip_code
      t.string :previous_school
      t.integer :age
      t.text :professional_strengths
      t.text :attitudinal_strengths
      t.text :work_experience
      t.text :ideal_job
      t.boolean :registration, default: false
      t.boolean :online, default: false
      t.timestamps null: false
    end
  end
end
