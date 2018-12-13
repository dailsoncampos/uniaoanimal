class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :condition
      t.integer :species
      t.string :pelage
      t.integer :color
      t.integer :genre
      t.string :breed
      t.integer :size
      t.integer :status
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
