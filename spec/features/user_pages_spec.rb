require 'rails_helper'

describe "the add a user process", :logged_out do
    it "adds a new user" do
        visit '/'
        click_link 'Sign up'
        fill_in 'user[username]', :with => 'CapyTest'
        fill_in 'user[email]', :with => 'capytest@test.com'
        fill_in 'user[password]', :with => 'password'
        fill_in 'user[password_confirmation]', :with => 'password'
        click_on 'Sign Up'
        expect(page).to have_content 'You\'ve successfully signed up!'
        expect(page).to have_content 'CapyTest'
    end
    it "gives error when no params are entered" do
        visit '/signup'
        click_on 'Sign Up'
        expect(page).to have_content 'There was a problem signing up.'
    end
end
