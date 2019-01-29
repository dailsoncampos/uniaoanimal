class DropTutor < ActiveRecord::Migration[5.2]
  def change
    drop_table :tutors
  end
end
