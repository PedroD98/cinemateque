class SessionsController < ApplicationController
  before_action :set_movie_theater, only: [:new, :create]
  
  def index
    @sessions = Session.all
  end

  def new
    @movies = Movie.all
    @session = @movie_theater.sessions.build
  end

  def create
    
  end

  private

  def set_movie_theater
    @movie_theater = MovieTheater.find(params[:movie_theater_id])
  end

  def session_params
    params.require(:session).permit(:movie_id, :room_id, :day_of_week, :starting_time)
  end
  
end