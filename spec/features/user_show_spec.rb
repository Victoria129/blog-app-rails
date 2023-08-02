# spec/features/user_show_spec.rb

require 'rails_helper'

RSpec.describe 'User show page', type: :feature do
  let!(:user) { create(:user, name: 'User 1') }

  it 'displays the user profile picture' do
    visit user_path(user)
    expect(page).to have_selector("img[src='#{user.photo}']")
  end

  it 'displays the user username' do
    visit user_path(user)
    expect(page).to have_content(user.name)
  end

  it 'displays the number of posts the user has written' do
    user.posts.create(title: 'Post 1', text: 'Text for Post 1')
    user.posts.create(title: 'Post 2', text: 'Text for Post 2')

    visit user_path(user)

    expect(page).to have_content("Number Of Posts: 2")
  end

  it 'displays the user bio' do
    visit user_path(user)
    expect(page).to have_content(user.bio)
  end

  it 'displays the first 3 posts of the user' do
    user.posts.create(title: 'Post 1', text: 'Text for Post 1')
    user.posts.create(title: 'Post 2', text: 'Text for Post 2')
    user.posts.create(title: 'Post 3', text: 'Text for Post 3')
    user.posts.create(title: 'Post 4', text: 'Text for Post 4')

    visit user_path(user)

    expect(page).to have_content('Post 1')
    expect(page).to have_content('Post 2')
    expect(page).to have_content('Post 3')
    expect(page).not_to have_content('Post 4')
  end

  # Add more tests for other features on the user show page
end
