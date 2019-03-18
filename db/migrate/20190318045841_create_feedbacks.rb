class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :task_id
      t.string :comment
      t.string :ratings

      t.timestamps
    end
  end
end
