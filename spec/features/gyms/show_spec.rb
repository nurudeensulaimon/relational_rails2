require 'rails_helper'

RSpec.describe "gyms show page", type: :feature do
  before :each do
    @gym_1 = Gym.create!(name:       "One Life Fitness",
                        location:     "Monticello Avenue",
                        member_fee:  30,
                        pool_service: true)
    
    @gym_2 = Gym.create!(name:       "Iron Fitness",
                          location:    "Military Highway",
                          member_fee:  60,
                          pool_service: true)
    
    @gym_3 = Gym.create!(name:"24 Hours Fitness",
                       location:     "East Little Creek",
                       member_fee:  10,
                        pool_service: false)
    visit "/gyms/#{@gym_1.id}"
    end
    
  it "displays the  specific gym's with name, location,member_fee,pool_service" do

    expect(page).to have_content(@gym_1.name)
    expect(page).to have_content(@gym_1.location)
    expect(page).to have_content(@gym_1.member_fee)
    expect(page).to have_content(@gym_1.pool_service)
    #save_and_open_page
    end
end