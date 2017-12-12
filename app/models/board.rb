class Board < ApplicationRecord
  has_many :mezzages
  has_and_belongs_to_many :users
end
