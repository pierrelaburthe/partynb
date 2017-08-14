class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party

  validates :user, presence: true, uniqueness: true

  validates :party, presence: true, uniqueness: true

  validates :participant_count, presence: true
end
