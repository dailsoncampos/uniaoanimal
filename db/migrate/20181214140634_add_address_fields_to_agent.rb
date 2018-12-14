class AddAddressFieldsToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :street, :string
  end
end
