class Party < ApplicationRecord
 belongs_to :user
 has_many :bookings, dependent: :destroy
 has_many :users, through: :bookings
 validates :title, presence: true , allow_blank: false
end
