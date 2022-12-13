class AddChangesToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :address, :float
  end
end
