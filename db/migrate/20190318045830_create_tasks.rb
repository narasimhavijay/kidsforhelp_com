class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :adult_id
      t.integer :kid_id
      t.string :status
      t.string :task_desc
      t.string :image_uploads

      t.timestamps
    end
  end
end
