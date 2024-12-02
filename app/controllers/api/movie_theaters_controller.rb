class Api::MovieTheatersController < ActionController::API
  def show
    if MovieTheater.find_by(id: params[:id])
      @movie_theater = MovieTheater.find(params[:id])
      @rooms = Room.all.where(movie_theater_id: @movie_theater.id)
    else
      render status: 404, json: { error: 'Cinema não encontrado' }
    end
  end
end