class CreateUserSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :user_skills do |t|
      t.integer :skill_id
      t.integer :kid_id

      t.timestamps
    end
  end
end
