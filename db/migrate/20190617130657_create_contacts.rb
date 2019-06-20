class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :source
      t.float :budget
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :pets
      t.string :notes

      t.timestamps
    end
  end
end
