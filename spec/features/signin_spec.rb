require 'rails_helper'

describe 'Sign in feature' do
  let(:user) { create :user }
  subject { page }

  before(:each) { visit new_user_session_path }

  context 'when the user is registered' do
    it 'allows to sign in' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_button 'Log in'

      expect(subject).to have_content 'Signed in successfully'
    end
  end

  context 'when the user isnt registered' do
    it 'doesnt allow to sign in' do
      fill_in 'Email', with: 'unregistered@example.com'
      fill_in 'Password', with: 'password'

      click_button 'Log in'

      expect(subject).to have_content 'Invalid email or password'
    end
  end
end
