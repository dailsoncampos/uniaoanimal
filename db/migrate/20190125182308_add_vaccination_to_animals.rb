class AddVaccinationToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :vaccination, :boolean
  end
end
