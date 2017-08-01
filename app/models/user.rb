class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :email, presence: true, on: :update

  has_many :group_users
  has_many :groups, through: :group_users
end
