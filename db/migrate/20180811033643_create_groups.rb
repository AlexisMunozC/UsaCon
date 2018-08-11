class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group, null: false
      t.timestamps
    end
    add_index :groups, :group, unique: true
  end
end
