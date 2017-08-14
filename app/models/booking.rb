class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party

  validates :user, presence: true
  validates :user, uniqueness: true

  validates :party, presence: true
  validates :party, uniqueness: true

  validates :participant_count, presence: true
end
