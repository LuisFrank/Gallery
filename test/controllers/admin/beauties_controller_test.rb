require 'test_helper'

class Admin::BeautiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_beauty = admin_beauties(:one)
  end

  test "should get index" do
    get admin_beauties_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_beauty_url
    assert_response :success
  end

  test "should create admin_beauty" do
    assert_difference('Admin::Beauty.count') do
      post admin_beauties_url, params: { admin_beauty: {  } }
    end

    assert_redirected_to admin_beauty_url(Admin::Beauty.last)
  end

  test "should show admin_beauty" do
    get admin_beauty_url(@admin_beauty)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_beauty_url(@admin_beauty)
    assert_response :success
  end

  test "should update admin_beauty" do
    patch admin_beauty_url(@admin_beauty), params: { admin_beauty: {  } }
    assert_redirected_to admin_beauty_url(@admin_beauty)
  end

  test "should destroy admin_beauty" do
    assert_difference('Admin::Beauty.count', -1) do
      delete admin_beauty_url(@admin_beauty)
    end

    assert_redirected_to admin_beauties_url
  end
end
