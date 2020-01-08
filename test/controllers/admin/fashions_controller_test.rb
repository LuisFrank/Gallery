require 'test_helper'

class Admin::FashionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_fashion = admin_fashions(:one)
  end

  test "should get index" do
    get admin_fashions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_fashion_url
    assert_response :success
  end

  test "should create admin_fashion" do
    assert_difference('Admin::Fashion.count') do
      post admin_fashions_url, params: { admin_fashion: {  } }
    end

    assert_redirected_to admin_fashion_url(Admin::Fashion.last)
  end

  test "should show admin_fashion" do
    get admin_fashion_url(@admin_fashion)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_fashion_url(@admin_fashion)
    assert_response :success
  end

  test "should update admin_fashion" do
    patch admin_fashion_url(@admin_fashion), params: { admin_fashion: {  } }
    assert_redirected_to admin_fashion_url(@admin_fashion)
  end

  test "should destroy admin_fashion" do
    assert_difference('Admin::Fashion.count', -1) do
      delete admin_fashion_url(@admin_fashion)
    end

    assert_redirected_to admin_fashions_url
  end
end
