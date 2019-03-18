class User < ApplicationRecord
  mount_uploader :profile_image, ProfileImageUploader

  # Direct associations

  has_many   :user_skills,
             :foreign_key => "kid_id",
             :dependent => :destroy

  has_many   :received_messages,
             :class_name => "Message",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :sent_messages,
             :class_name => "Message",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :tasks_as_helper,
             :class_name => "Task",
             :foreign_key => "kid_id",
             :dependent => :destroy

  has_many   :tasks_as_poster,
             :class_name => "Task",
             :foreign_key => "adult_id",
             :dependent => :destroy

  has_many   :profile_images,
             :dependent => :destroy

  # Indirect associations

  has_many   :posters,
             :through => :tasks_as_helper,
             :source => :poster

  has_many   :helpers,
             :through => :tasks_as_poster,
             :source => :helper

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
