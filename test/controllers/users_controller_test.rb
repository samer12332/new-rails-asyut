require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @User = Users(:one)
  end

  test "should get index" do
    get Users_url
    assert_response :success
  end

  test "should get new" do
    get new_User_url
    assert_response :success
  end

  test "should create User" do
    assert_difference("User.count") do
      post Users_url, params: { User: { email: @User.email, name: @User.name } }
    end

    assert_redirected_to User_url(User.last)
  end

  test "should show User" do
    get User_url(@User)
    assert_response :success
  end

  test "should get edit" do
    get edit_User_url(@User)
    assert_response :success
  end

  test "should update User" do
    patch User_url(@User), params: { User: { email: @User.email, name: @User.name } }
    assert_redirected_to User_url(@User)
  end

  test "should destroy User" do
    assert_difference("User.count", -1) do
      delete User_url(@User)
    end

    assert_redirected_to Users_url
  end
end
