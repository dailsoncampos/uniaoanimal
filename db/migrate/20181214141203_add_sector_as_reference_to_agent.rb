class AddSectorAsReferenceToAgent < ActiveRecord::Migration[5.2]
  def change
    add_reference :agents, :sector, foreign_key: true
  end
end
