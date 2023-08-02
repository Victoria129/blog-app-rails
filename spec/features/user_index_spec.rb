# spec/features/user_index_spec.rb

require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  let!(:user1) { create(:user, name: 'User 1') }
  let!(:user2) { create(:user, name: 'User 2') }

  it 'displays the username of all other users' do
    visit users_path
    expect(page).to have_content(user1.name)
    expect(page).to have_content(user2.name)
  end

  it 'displays the profile picture for each user' do
    visit users_path
    expect(page).to have_selector("img[src='#{user1.photo}']")
    expect(page).to have_selector("img[src='#{user2.photo}']")
  end

  it 'displays the number of posts each user has written' do
    user1.posts.create(title: 'Post 1', text: 'Text for Post 1')
    user1.posts.create(title: 'Post 2', text: 'Text for Post 2')
    user2.posts.create(title: 'Post 3', text: 'Text for Post 3')

    visit users_path

    expect(page).to have_content("Number Of Posts: 2", count: 1)
    expect(page).to have_content("Number Of Posts: 1", count: 1)
  end

  it 'redirects to user show page when clicking on a user' do
    visit users_path

    click_link user1.name
    expect(current_path).to eq(user_path(user1))

    click_link user2.name
    expect(current_path).to eq(user_path(user2))
  end
end
