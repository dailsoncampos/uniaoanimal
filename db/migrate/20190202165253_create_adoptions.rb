class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.integer :status
      t.references :adopter, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
