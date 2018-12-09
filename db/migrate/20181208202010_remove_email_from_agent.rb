class RemoveEmailFromAgent < ActiveRecord::Migration[5.2]
  def change
    remove_column :agents, :email, :string
  end
end
