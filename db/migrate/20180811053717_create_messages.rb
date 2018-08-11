class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :contact, null: false
      t.boolean :emisor_is_student, null: false, default: true
      t.text :message, null: false
      t.timestamps
    end
  end
end
