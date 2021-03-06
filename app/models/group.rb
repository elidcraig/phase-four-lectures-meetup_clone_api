class Group < ApplicationRecord
  has_many :events
  has_many :memberships
  has_many :members, through: :memberships, source: :user

  validates :name, presence: true, uniqueness: true
end
