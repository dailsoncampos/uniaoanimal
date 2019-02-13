class CreateSuggestionDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestion_donations do |t|
      t.integer :kind
      t.string :description

      t.timestamps
    end
  end
end
