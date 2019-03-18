class Task < ApplicationRecord
  # Direct associations

  has_many   :feedbacks,
             :dependent => :destroy

  belongs_to :helper,
             :class_name => "User",
             :foreign_key => "kid_id"

  belongs_to :poster,
             :class_name => "User",
             :foreign_key => "adult_id"

  # Indirect associations

  # Validations

end
