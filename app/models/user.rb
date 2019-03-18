class User < ApplicationRecord
  # Direct associations

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

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
