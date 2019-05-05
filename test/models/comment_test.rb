require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(content: "blabla", user_id: 1, post_id: 1)
  end

  test "comment dont be empty" do
    @comment.content = ""
    assert_not @comment.valid?
  end

  test "comment dont be more than 300 char" do
    @comment.content = "a" * 101
    assert_not @comment.valid?
  end

  test "comment needs an author" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "comment needs a post" do
    @comment.post_id = nil
    assert_not @comment.valid?
  end
end
