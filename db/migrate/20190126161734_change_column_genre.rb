class ChangeColumnGenre < ActiveRecord::Migration[5.2]
  def change
    rename_column :animals, :genre, :gender
  end
end
