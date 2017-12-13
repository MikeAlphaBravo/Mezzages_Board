class Mezzage < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :title, presence: true
  validates :body, presence: true
end
