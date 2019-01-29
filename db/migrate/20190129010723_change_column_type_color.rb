class ChangeColumnTypeColor < ActiveRecord::Migration[5.2]
  def change
    change_column :animals, :color, :string
  end
end
