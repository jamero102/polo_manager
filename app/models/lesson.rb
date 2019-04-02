class Lesson < ApplicationRecord
  belongs_to :horse
  belongs_to :user
  belongs_to :group_lesson
end
