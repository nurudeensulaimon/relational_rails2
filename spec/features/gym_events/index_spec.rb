require 'rails_helper'
# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
#(data from each column that is on the child table)

RSpec.describe "Events Index", type: :feature do 
  before :each do
  @gym_1 = Gym.create!(name:"One Life Fitness",
                     location:"Monticello Avenue",
                     member_fee:  30,
                     pool_service: true)  
   @event_1 = @gym_1.events.create!(instructor_name:'Jivani', name:'Yoga', duration:45,  music:true)
   @event_2 = @gym_1.events.create!(instructor_name:"Mofund", name:"Zumba", duration:120, music:true)
   @event_3 = @gym_1.events.create!(instructor_name:"Louis", name:"Core", duration:30,music:false)

   visit "/gyms/#{@gym_1.id}/events"
 end 
   
    it "can see the events and attributes of the event" do 
      save_and_open_page
    expect(page).to have_content("instructor_name:#{@event_1.instructor_name}")
    expect(page).to have_content("name:#{@event_1.name}")
    expect(page).to have_content("duration:#{@event_1.duration}")
    expect(page).to have_content("music:#{@event_1.music}")
  end
end
