class RemovePreferencesFromTutors < ActiveRecord::Migration[5.2]
  def change
    remove_column :tutors, :preferences, :string
  end
end
