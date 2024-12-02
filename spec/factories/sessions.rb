FactoryBot.define do
  factory :session do
    movie_theater
    room
    day_of_week { 1 }
    starting_time { Time.zone.current }
  end
end
