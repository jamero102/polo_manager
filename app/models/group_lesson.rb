class GroupLesson < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
end
