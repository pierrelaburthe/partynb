class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

has_many :parties
has_many :bookings

validates :email, presence: true
validates :name, presence: true
validates :password, presence: true
validates :age, presence: true


devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

end
