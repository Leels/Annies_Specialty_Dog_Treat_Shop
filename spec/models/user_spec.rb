require 'rails_helper'

describe User, :model do


    context '(validations)' do
        it { should validate_presence_of :username }
        it { should validate_presence_of :email }
        it { should validate_uniqueness_of :username }
        it { should validate_uniqueness_of :email }
        it { should validate_confirmation_of :password }
    end

    context '(callbacks)' do
        it 'encrypts password before save' do
            User.destroy_all
            user = User.create!({username: 'Test', email: 'test@test.com', password: 'password'})
            expect(user.encrypt_password).not_to include ('password')
        end
    end

    context '(authentication)' do
        it 'authenticates entered credentials' do
            User.destroy_all
            user = User.create!({username: 'Test', email: 'test@test.com', password: 'password'})
            expect(User.authenticate('Test', '12345')).to eq nil
            expect(User.authenticate('Test', 'password')).to eq user
        end
    end
end
