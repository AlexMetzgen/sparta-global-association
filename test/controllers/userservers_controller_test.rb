require 'test_helper'

class UserserversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userserver = userservers(:one)
  end

  test "should get index" do
    get userservers_url
    assert_response :success
  end

  test "should get new" do
    get new_userserver_url
    assert_response :success
  end

  test "should create userserver" do
    assert_difference('Userserver.count') do
      post userservers_url, params: { userserver: { online: @userserver.online, owner: @userserver.owner, user_id: @userserver.user_id, userfile_id: @userserver.userfile_id } }
    end

    assert_redirected_to userserver_url(Userserver.last)
  end

  test "should show userserver" do
    get userserver_url(@userserver)
    assert_response :success
  end

  test "should get edit" do
    get edit_userserver_url(@userserver)
    assert_response :success
  end

  test "should update userserver" do
    patch userserver_url(@userserver), params: { userserver: { online: @userserver.online, owner: @userserver.owner, user_id: @userserver.user_id, userfile_id: @userserver.userfile_id } }
    assert_redirected_to userserver_url(@userserver)
  end

  test "should destroy userserver" do
    assert_difference('Userserver.count', -1) do
      delete userserver_url(@userserver)
    end

    assert_redirected_to userservers_url
  end
end
