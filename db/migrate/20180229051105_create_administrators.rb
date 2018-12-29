class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :email, null: false
      t.string :password_encrypted, null: false
      t.timestamps null: false
    end
  end
end
