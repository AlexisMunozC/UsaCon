class AddKeys < ActiveRecord::Migration
  def change
      add_index :students, :email, unique: true
      add_index :students, :control_number, unique: true
      add_index :students, :CURP, unique: true
      
      add_index :companies, :email, unique: true
      add_index :companies, :rfc, unique: true
      
      add_index :administrators, :email, unique: true
      
  end
end
