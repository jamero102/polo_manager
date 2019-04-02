class Horse < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :chukkers
  has_many :lessons
end
