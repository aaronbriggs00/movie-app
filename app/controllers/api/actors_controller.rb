class Api::ActorsController < ApplicationController
  def index
    @actors =   
    render "index.json.jb"
  end
  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end
  def update
    @actor = Actor.find(params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for 
    @actor.gender = params[:gender] || @actor.gender 
    @actor.age = params[:age] || @actor.age 
    if @actor.save
      render json: show.json.jb
    else
      render json: {errors:@actor.errors.full_messages}
    end
  end
  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      )
    if @actor.save
      render "show.json.jb"
    else
      render json: {errors:@actor.errors.full_messages}
    end
  end
  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "destroyed successfully probably"}
  end
end
