class AddNameIndexToTasks < ActiveRecord::Migration[6.0]
  def up
    add_index :tasks, :name, unique: true
  end
  def down
    add_index :tasks, :name
  end
end
