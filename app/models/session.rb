class Session < ApplicationRecord
  belongs_to :movie_theater
  belongs_to :movie
  belongs_to :room
  enum :day_of_week, { sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6}
  
  validates :day_of_week, :starting_time, presence: true
end
