class User < ApplicationRecord
  has_many :mezzages
  has_and_belongs_to_many :boards
end
