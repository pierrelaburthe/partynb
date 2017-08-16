class Party < ApplicationRecord
geocoded_by :address
after_validation :geocode, if: :address_changed?

 belongs_to :user
 has_many :bookings, dependent: :destroy
 has_many :users, through: :bookings
 validates :title, presence: true , allow_blank: false
end
