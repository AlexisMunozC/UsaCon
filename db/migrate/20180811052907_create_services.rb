class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :description, null: false
      t.timestamps
    end
    add_index :services,  :description, unique: true
  end
end
