class AddCategoryToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :category, :integer
  end
end
