require "test_helper"

class CreatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @Creator = Creators(:one)
  end

  test "should get index" do
    get Creators_url
    assert_response :success
  end

  test "should get new" do
    get new_Creator_url
    assert_response :success
  end

  test "should create Creator" do
    assert_difference("Creator.count") do
      post Creators_url, params: { Creator: { email: @Creator.email, name: @Creator.name } }
    end

    assert_redirected_to Creator_url(Creator.last)
  end

  test "should show Creator" do
    get Creator_url(@Creator)
    assert_response :success
  end

  test "should get edit" do
    get edit_Creator_url(@Creator)
    assert_response :success
  end

  test "should update Creator" do
    patch Creator_url(@Creator), params: { Creator: { email: @Creator.email, name: @Creator.name } }
    assert_redirected_to Creator_url(@Creator)
  end

  test "should destroy Creator" do
    assert_difference("Creator.count", -1) do
      delete Creator_url(@Creator)
    end

    assert_redirected_to Creators_url
  end
end
