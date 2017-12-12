class User < ApplicationRecord
  has_many :mezzages
  has_many :boards, through: :users_boards
end
