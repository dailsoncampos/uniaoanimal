class RemovePelageFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :pelage, :string
  end
end
