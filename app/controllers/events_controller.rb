class EventsController < ApplicationController 
  def index
    #gym=Gym.find(params[:gym_id])
    #@events= Event.all.only_true
    @events = Gym.events 
  end
end