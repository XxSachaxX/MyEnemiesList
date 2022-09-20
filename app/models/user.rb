class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lists, dependent: :destroy
  has_many :enemies, through: :lists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
