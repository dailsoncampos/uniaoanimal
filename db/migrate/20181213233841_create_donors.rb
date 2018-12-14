class CreateDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :donation
      t.text :message

      t.timestamps
    end
  end
end
