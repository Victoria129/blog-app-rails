# : true

RSpec.describe 'User Index Page', type: :feature do
  before do
    #   # Create sample users with usernames, profile pictures, and post counts
    #   # Visit the User index page
    #   visit users_path
    # end

    # it "displays the username of all other users" do
    #   # Verify that each user's username is present on the page
    #   User.all.each do |user|
    #     expect(page).to have_content(user.username)
    #   end
  end

  it 'displays the profile picture for each user' do
  end

  it 'displays the number of posts each user has written' do
  end

  it "redirects to a user's show page when clicked" do
  end
end
