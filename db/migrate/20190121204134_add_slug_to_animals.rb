class AddSlugToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :slug, :string
    add_index :animals, :slug, unique: true
  end
end
