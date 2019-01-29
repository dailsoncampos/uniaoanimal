class CreateRequesters < ActiveRecord::Migration[5.2]
  def change
    create_table :requesters do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :identify
      t.string :cpf
      t.string :street
      t.string :number
      t.integer :sector
      t.string :city
      t.string :zip
      t.string :referency_point
      t.integer :residence
      t.boolean :fenced_plot

      t.timestamps
    end
  end
end
