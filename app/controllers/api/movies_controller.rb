class Api::MoviesController < ApplicationController
  def movie_action
    if params[:id] != "all"
      @movie = Movie.find_by(id: params[:id])
      render "movie.json.jb"
    else
      @movies = Movie.all
      render "all-movies.json.jb" 
    end   
  end
end
