class AddStatusToContacts < ActiveRecord::Migration[5.2]
  def change
  	add_column :contacts, :status, :string
  end
end
