class ChangeColumnSpecies < ActiveRecord::Migration[5.2]
  def change
    rename_column :animals, :species, :specie
  end
end
