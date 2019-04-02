class GroupLesson < ApplicationRecord
  belongs_to :lesson
  belongs_to :instructor, class_name: "User", foreign_key: :user_id
  has_many :users, through: :lessons
  has_many :horses, through: :lessons
end
