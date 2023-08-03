RSpec.describe "User Show Page", type: :feature do
  before do
    # # Manually create sample user with profile picture, username, posts, and bio
    # @user = User.create(
    #   username: "testuser",
    #   profile_picture_url: "path/to/profile_picture.png",
    #   bio: "This is a test user's bio."
    # )

    # # Manually create sample posts for the user
    # @posts = []
    # 5.times do |i|
    #   @posts << @user.posts.create(
    #     title: "Post #{i+1}",
    #     content: "This is the content of Post #{i+1}."
    #   )
    # end

    # visit user_path(@user)
  end

  it "displays the user's profile picture" do
   end

  it "displays the user's username" do
   end

  it "displays the number of posts the user has written" do
   end

  it "displays the user's bio" do
  end

  it "displays the user's first 3 posts" do
  end

  it "has a button to view all of a user's posts" do
  end

  it "redirects to a post's show page when clicked on a user's post" do
  end

  it "redirects to the user's posts index page when 'View all posts' is clicked" do
  end
end