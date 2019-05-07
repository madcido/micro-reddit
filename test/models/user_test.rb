require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "test")
  end

  test "username must be present" do
    @user.username = " "
    assert_not @user.valid?
  end

  test "username length must be 20 char max" do
    @user.username = "a" * 21
    assert_not @user.valid?
  end

  test "username must be unique" do
    duplicate = @user.dup
    @user.save
    assert_not duplicate.valid?
  end
end
