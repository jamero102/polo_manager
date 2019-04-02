class Game < ApplicationRecord
  belongs_to :umpire, class_name: "User", foreign_key: :user_id
  has_many :chukkers
  has_many :players, through: :chukkers, class_name: "User", foreign_key: :user_id
  has_many :horses, through: :chukkers
end
