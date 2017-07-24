require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do


  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Welcome to Apartment Listings")
      end
    end
  end


  context 'Creating an apartment for listing' do
    Steps 'Creating an apartment listing' do
      Given 'I am on the new apartments page' do
        visit '/apartments/new'
      end
      When 'I fill in the new information of a listing' do
        fill_in 'Street1', with: 'J Street'
        fill_in 'Street2', with: '7th Ave'
        fill_in 'City', with: 'San Diego'
        fill_in 'Zipcode', with: '92001'
        fill_in 'State', with: 'California'
        fill_in 'Name', with: 'Learn Academy'

      end
      And 'I submit the information' do
        click_button 'Create Apartment'
      end
      Then "I can see the car's info" do
        expect(page).to have_content('Name: Learn Academy')
      end
      And 'I can see the speed of the car' do
        expect(page).to have_content('City: San Diego')
      end
    end
  end




end
