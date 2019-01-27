class AddCastrationToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :castration, :boolean
  end
end
