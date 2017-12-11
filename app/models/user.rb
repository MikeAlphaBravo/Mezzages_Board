class User < ApplicationRecord
  has_many :mezzages
  belongs_to :board
end
