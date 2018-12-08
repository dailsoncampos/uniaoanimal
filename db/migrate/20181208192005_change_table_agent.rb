class ChangeTableAgent < ActiveRecord::Migration[5.2]
  def change
    remove_column :agents, :category_id, :bigint
  end
end
