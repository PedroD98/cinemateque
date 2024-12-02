json.movie_theater_details do
  json.name @movie_theater.name
  json.city @movie_theater.city  
end

if @rooms.any?
  json.rooms @rooms do |room|
    json.room_name room.name
    json.room_capacity room.capacity
  end
end