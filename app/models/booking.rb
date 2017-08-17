class Booking < ApplicationRecord

  STATUS = ["Accepted","Declined"]

  belongs_to :user
  belongs_to :party

  validates :user, presence: true
  validates :party, presence: true, uniqueness: {scope: :user}
  validates :participant_count, presence: true
end
