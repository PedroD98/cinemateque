class MovieTheater < ApplicationRecord
  validates :name, :city, presence: true
  has_many :rooms
  has_many :sessions
end
