class Skill < ApplicationRecord
  # Direct associations

  has_many   :user_skills,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
