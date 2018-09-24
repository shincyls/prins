require 'spec_helper'
require 'capybara/rspec'

RSpec.feature "Users", type: :feature do

	before(:each) do
		Dress.create(name: 'Gold Dress', code: 'FG4321', color: 'red')
	end

  	context 'register a new user' do 

     	scenario "should be successful" do
	      	visit root_path
			  within(".new_user") do
				fill_in 'user[username]', with: (0...8).map { ('a'..'z').to_a[rand(26)] }.join.to_s
		        fill_in 'user[first_name]', with: 'Shin'
		        fill_in 'user[last_name]', with: 'Cy'
				fill_in 'user[email]', with: (0...8).map { ('a'..'z').to_a[rand(26)] }.join.to_s + '@email.com'
				fill_in 'user[birthday]', with: '09/04/2018'
		        fill_in 'user[password]', with: 'password'
      		  end
	      	click_button 'Sign Up'
	      	expect(page).to have_content 'User was successfully created.'
      	end

      	scenario "should fail" do
      		visit root_path
			  within("#new_user") do
				fill_in 'Username', with: ''
		        fill_in 'First Name', with: 'Shin'
		        fill_in 'Last Name', with: 'Cy'
		    end
	      	click_button 'Sign Up'
	      	expect(page).to have_content "Email : Please enter a valid email address."
      	end	
    end

end