class AddMessageCountToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :messages_count, :integer
  end
end
