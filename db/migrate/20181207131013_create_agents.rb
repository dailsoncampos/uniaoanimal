class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
