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
		
	end