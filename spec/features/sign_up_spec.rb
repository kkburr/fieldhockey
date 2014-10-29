require 'rails_helper'

	feature 'sign up' do 
		scenario 'first visiting the site' do
			visit '/'
      		expect(page).to have_content("Colorado Youth Field Hockey")
      	end
		
	end