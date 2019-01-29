class AddColumnsToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :breed, :string
    add_column :animals, :vermifugation, :integer
    add_column :animals, :special_care, :boolean
    add_column :animals, :kind_of_special_care, :string
  end
end
