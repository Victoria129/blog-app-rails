# frozen_string_literal: true

RSpec.describe 'User Post Index Page', type: :feature do
  before do
    # # Manually create sample user with profile picture, username, and posts
    # @user = User.create(
    #   username: "testuser",
    #   profile_picture_url: "path/to/profile_picture.png",
    # )

    # # Manually create sample posts for the user
    # @posts = []
    # 10.times do |i|
    #   @posts << @user.posts.create(
    #     title: "Post #{i+1}",
    #     body: "This is the body of Post #{i+1}."
    #   )
    # end

    # visit user_posts_path(@user)
  end

  it "displays the user's profile picture" do
  end

  it "displays the user's username" do
  end

  it 'displays the number of posts the user has written' do
  end

  it "displays a post's title" do
  end

  it "displays some of the post's body" do
  end

  it 'displays the first comments on a post' do
  end

  it 'displays how many comments a post has' do
  end

  it 'displays how many likes a post has' do
  end

  it 'has a section for pagination if there are more posts than fit on the view' do
  end

  it "redirects to a post's show page when clicked on a post" do
  end
end
