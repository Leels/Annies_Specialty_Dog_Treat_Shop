require 'rails_helper'

describe 'the session sign-in process', :logged_out do
    it "begins session" do
        User.create!({username: 'CapyTest', email: 'capytest@test.com', password: 'password'})
        visit '/'
        click_on 'Sign in'
        fill_in 'email', :with => 'capytest@test.com'
        fill_in 'password', :with => 'password'
        click_on 'Sign In'
        expect(page).to have_content 'You\'ve signed in.'
    end
    it "gives error when credentials are incorrect" do
        visit '/'
        click_on 'Sign in'
        fill_in 'email', :with => 'test@test.com'
        fill_in 'password', :with => ''
        click_on 'Sign In'
        expect(page).to have_content 'There was a problem signing in. Please try again.'
    end
    it "ends session" do
        User.create!({username: 'CapyTest', email: 'capytest@test.com', password: 'password'})
        visit '/'
        click_on 'Sign in'
        fill_in 'email', :with => 'capytest@test.com'
        fill_in 'password', :with => 'password'
        click_on 'Sign In'
        click_on 'Sign out'
        expect(page).to have_content 'You\'ve signed out.'
    end
    it "identifies if user is not signed in/registered" do
        visit '/'
        click_on 'Complete List of Treats'
        expect(page).to have_content 'You aren\'t authorized to visit that page. Please sign in or register an account with us.'
    end
end
