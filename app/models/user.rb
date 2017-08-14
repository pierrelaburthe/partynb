class User < ApplicationRecord
has_many :parties
validates :name, presence: true
validates :mail, presence: true
validates :password, presence: true
end
