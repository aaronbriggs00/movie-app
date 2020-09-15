class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end
  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end
  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for 
    actor.save
    render json: {message: "updated successfully probably"}
  end
  def create
    @actor = Actor.create(first_name: params[:first_name], last_name: params[:last_name], known_for: params[:known_for])
    render "show.json.jb"
  end
  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "destroyed successfully probably"}
  end
end
