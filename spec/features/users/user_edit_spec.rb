include Warden::Test::Helpers
Warden.test_mode!

# Feature: User edit
#   As a user
#   I want to edit my user profile
#   So I can change my email address
feature 'User edit', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User changes all info
  #   Given I am signed in
  #   When I change my profile
  #   Then I see an account updated message
  scenario 'user changes profile information fields' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path(user)
    fill_in 'Email', :with => 'newemail@example.com'
    select 'Male', :from => 'user_gender'
    fill_in 'Age', :with => '27'
    fill_in 'Photo', :with => 'http://www.placekitten.com/300/300'
    select 'skydiving', :from => 'user_interest_category'
    fill_in 'Current password', :with => user.password
    click_button 'Update'
    expect(page).to have_content I18n.t 'devise.registrations.updated'
  end

  # Scenario: User cannot edit another user's profile
  #   Given I am signed in
  #   When I try to edit another user's profile
  #   Then I see my own 'edit profile' page
  scenario "user cannot cannot edit another user's profile", :me do
    me = FactoryGirl.create(:user)
    other = FactoryGirl.create(:user, email: 'other@example.com')
    login_as(me, :scope => :user)
    visit edit_user_registration_path(other)
    expect(page).to have_content 'My Profile'
    expect(page).to have_field('Email', with: me.email)
  end

end
