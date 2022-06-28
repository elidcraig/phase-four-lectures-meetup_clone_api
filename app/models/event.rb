class Event < ApplicationRecord
  belongs_to :group
  belongs_to :user

  has_many :rsvps
  has_many :attendees, through: :rsvps, source: :user

  validates :title, :location, :starts_at, :ends_at, presence: true
  validates :title, uniqueness: {
    scope: [:location, :starts_at],
    message: 'already created event at this location & time'
  }
end
