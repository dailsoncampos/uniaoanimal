class ChangeColumnToAnimals < ActiveRecord::Migration[5.2]
  def change
    rename_column :animals, :condition, :age_group
  end
end
