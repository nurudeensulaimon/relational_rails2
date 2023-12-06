require 'rails_helper'

RSpec.describe "gyms index page", type: :feature do
before :each do
     @gym_1 = Gym.create!(name:"One Life Fitness",
                     location:"Monticello Avenue",
                     member_fee:30,
                     pool_service: true)

     @gym_2 = Gym.create!(name:"Iron Fitness",
                         location:"Military Highway",
                          member_fee:60,
                          pool_service: true)

     @gym_3 = Gym.create!(name:"24 Hours Fitness",
                          location:"East Little Creek",
                          member_fee:10,
                          pool_service:false)
                          
      visit "/gyms"
     end

   it "can see all gym's name" do
    
    expect(page).to have_content(@gym_1.name)
    expect(page).to have_content(@gym_2.name)
    expect(page).to have_content(@gym_3.name)
    end
end