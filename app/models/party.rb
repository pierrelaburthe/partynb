class Party < ApplicationRecord
  belongs_to :user
  has_many :users
  validates :title, presence: true , allow_blank: false
end
