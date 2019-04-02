class Chukker < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :horse
end
