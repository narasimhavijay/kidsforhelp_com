class UserSkill < ApplicationRecord
  # Direct associations

  belongs_to :kid,
             :class_name => "User"

  # Indirect associations

  # Validations

end
