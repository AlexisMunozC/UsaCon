class CreateVacants < ActiveRecord::Migration
  def change
    create_table :vacants do |t|
      t.references :company, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.string :name, null: false
      t.references :departament, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.references :service, null: false, :foreign_key => {on_update: :cascade, on_delete: :cascade}
      t.text :function, null: false
      t.integer :vacancy_numbers, null: false
      t.string :working_hours, null: false
      t.string :reference_name_1, null: false
      t.string :reference_number_phone_1, null: false
      t.string :reference_name_2, null: false
      t.string :reference_number_phone_2, null: false
      t.text :benefits, null: false
      t.text :observations, null: true
      t.boolean :active, null: false, default: true
      t.timestamps
    end
  end
end
