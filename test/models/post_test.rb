require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(content: "blabla", user_id: 1)
  end

  test "post dont be empty" do
    @post.content = ""
    assert_not @post.valid?
  end

  test "post dont be more than 300 char" do
    @post.content = "a" * 301
    assert_not @post.valid?
  end

  test "post needs an author" do
    @post.user_id = nil
    assert_not @post.valid?
  end
end
