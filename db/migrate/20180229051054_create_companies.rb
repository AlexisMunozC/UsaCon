class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.string :email, null:false
      t.string :password_encrypted, null:false
      t.string :RFC, null: false
      t.string :name, null: false
      t.string :business_activity, null: false
      t.string :address, null: false
      t.string :zip_code, null: false
      t.string :phone_number, null: false
      t.boolean :civil_association, null: false, default: false
      t.string :res_name, null: false
      t.string :res_schedule, null: false
      t.string :res_phone_number, null: false
      t.string :res_email, null: false
      t.string :online, default: false
      t.boolean :validate, default: false
      t.boolean :confirmed_email, default: false
      t.timestamps null: false
    end
  end
end
