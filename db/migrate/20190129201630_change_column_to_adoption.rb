class ChangeColumnToAdoption < ActiveRecord::Migration[5.2]
  def change
    rename_column :adoptions, :requesters_id, :requester_id
  end
end