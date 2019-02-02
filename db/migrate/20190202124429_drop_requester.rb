class DropRequester < ActiveRecord::Migration[5.2]
  def change
    drop_table :requesters
  end
end
