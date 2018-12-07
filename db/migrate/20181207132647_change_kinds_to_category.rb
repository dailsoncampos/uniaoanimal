class ChangeKindsToCategory < ActiveRecord::Migration[5.2]
  def change
    rename_table :kinds, :categories
  end
end
