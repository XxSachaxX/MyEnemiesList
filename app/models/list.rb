class List < ApplicationRecord
  belongs_to :user
  has_many :enemies, dependent: :destroy
end
