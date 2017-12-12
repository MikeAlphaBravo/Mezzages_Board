class Board < ApplicationRecord
  has_many :mezzages
  has_many :users, through: :users_boards
end
