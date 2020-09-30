class Api::MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
    render "index.json.jb"
  end
  
  def create
    MovieGenre.create(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
  end
end
