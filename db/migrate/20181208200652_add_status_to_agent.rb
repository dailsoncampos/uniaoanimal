class AddStatusToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :status, :integer
  end
end
