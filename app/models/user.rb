class User < ApplicationRecord
has_many :parties, through: :bookings
has_many :bookings

validates :name, presence: true
validates :mail, presence: true
validates :password, presence: true
end
