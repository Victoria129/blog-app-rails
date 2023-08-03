# : true

RSpec.describe 'Post Show Page', type: :feature do
  before do
    # # Manually create a sample user with a post and comments
    # @user = User.create(
    #   username: "testuser",
    #   profile_picture_url: "path/to/profile_picture.png",
    # )
    # @post = @user.posts.create(
    #   title: "Test Post",
    #   text: "This is the content of the test post.",
    # )
    # @comments = []
    # 5.times do |i|
    #   @comments << @post.comments.create(
    #     content: "Comment #{i+1} on the test post.",
    #     user: @user
    #   )
    # end

    # visit post_path(@post)
  end

  it "displays the post's title" do
  end

  it 'displays who wrote the post' do
  end

  it 'displays how many comments the post has' do
  end

  it 'displays how many likes the post has' do
  end

  it 'displays the post body' do
  end

  it 'displays the username of each commenter' do
  end

  it 'displays the comment left by each commenter' do
  end
end
