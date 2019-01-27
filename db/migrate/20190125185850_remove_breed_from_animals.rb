class RemoveBreedFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :breed, :string
  end
end
