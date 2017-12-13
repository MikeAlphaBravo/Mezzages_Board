class Board < ApplicationRecord
  has_many :mezzages
  has_many :users, through: :mezzages

  validates :title, presence: true
  validates :description, presence: true
end
