require 'rails_helper'

	feature 'sign up' do 
		scenario 'first visiting the site' do
			visit '/'
  		expect(page).to have_content('Colorado Youth Field Hockey')
  		expect(page).to have_content('Site created by Kaitlin Barrer')      		
  		click_on 'About'
  		expect(page).to have_content('Providing opportunities to get kids into field hockey!')
  		expect(page).to have_content('Site created by Kaitlin Barrer')
  		expect(page).to_not have_content('Colorado Youth Field Hockey')
    end

    scenario 'sign up' do
      visit new_user_path
      fill_in 'parent first name', :with => 'Patty'
      # save_and_open_page
      fill_in 'Parent last name', :with => 'Imhoff'
      fill_in 'Email', :with => 'earthy@link.net'
      fill_in 'Password', :with => '123456'
      fill_in 'Confirmation', :with => '123456'
      click_on 'Create My Account'
      expect(page).to have_content('Field Hockey Leagues in Denver for Grades 3-8')
    end

	end