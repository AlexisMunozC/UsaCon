class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :description, null: false
      t.timestamps
    end
    
    add_index :departaments, :description, unique: true
  end
end
