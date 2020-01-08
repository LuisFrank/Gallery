require 'test_helper'

class Admin::JewelriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_jewelry = admin_jewelries(:one)
  end

  test "should get index" do
    get admin_jewelries_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_jewelry_url
    assert_response :success
  end

  test "should create admin_jewelry" do
    assert_difference('Admin::Jewelry.count') do
      post admin_jewelries_url, params: { admin_jewelry: {  } }
    end

    assert_redirected_to admin_jewelry_url(Admin::Jewelry.last)
  end

  test "should show admin_jewelry" do
    get admin_jewelry_url(@admin_jewelry)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_jewelry_url(@admin_jewelry)
    assert_response :success
  end

  test "should update admin_jewelry" do
    patch admin_jewelry_url(@admin_jewelry), params: { admin_jewelry: {  } }
    assert_redirected_to admin_jewelry_url(@admin_jewelry)
  end

  test "should destroy admin_jewelry" do
    assert_difference('Admin::Jewelry.count', -1) do
      delete admin_jewelry_url(@admin_jewelry)
    end

    assert_redirected_to admin_jewelries_url
  end
end
