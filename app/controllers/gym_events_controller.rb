class GymEventsController < ApplicationController 
  def index
    gym=Gym.find(params[:gym_id])
    @events= gym.events
  end

  def show
    gym=Gym.find(params[:gym_id])
    @events= gym.events
  end
end