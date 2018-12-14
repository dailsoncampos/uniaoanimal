class RemoveSectorFromAgent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :agents, :sector, foreign_key: true
  end
end
