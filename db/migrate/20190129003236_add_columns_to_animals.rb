class AddColumnsToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :breed, :string
    add_column :animals, :vermifugation, :integer
  end
end
