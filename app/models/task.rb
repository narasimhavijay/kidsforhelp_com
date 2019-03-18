class Task < ApplicationRecord
  # Direct associations

  belongs_to :poster,
             :class_name => "User",
             :foreign_key => "adult_id"

  # Indirect associations

  # Validations

end
