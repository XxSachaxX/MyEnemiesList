class Enemy < ApplicationRecord
  belongs_to :list
  validates :name, presence: true
  validates :grudge, presence: true
  has_one_attached :photo
end
