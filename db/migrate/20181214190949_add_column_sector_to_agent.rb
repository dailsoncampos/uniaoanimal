class AddColumnSectorToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :sector, :integer
  end
end
