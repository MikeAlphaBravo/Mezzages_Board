class User < ApplicationRecord
  has_many :mezzages
  has_many :boards, through: :mezzages

  validates :name, presence: true
end
