require 'test_helper'

class Admin::PortraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_portrait = admin_portraits(:one)
  end

  test "should get index" do
    get admin_portraits_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_portrait_url
    assert_response :success
  end

  test "should create admin_portrait" do
    assert_difference('Admin::Portrait.count') do
      post admin_portraits_url, params: { admin_portrait: { description: @admin_portrait.description, name: @admin_portrait.name, order: @admin_portrait.order, show: @admin_portrait.show } }
    end

    assert_redirected_to admin_portrait_url(Admin::Portrait.last)
  end

  test "should show admin_portrait" do
    get admin_portrait_url(@admin_portrait)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_portrait_url(@admin_portrait)
    assert_response :success
  end

  test "should update admin_portrait" do
    patch admin_portrait_url(@admin_portrait), params: { admin_portrait: { description: @admin_portrait.description, name: @admin_portrait.name, order: @admin_portrait.order, show: @admin_portrait.show } }
    assert_redirected_to admin_portrait_url(@admin_portrait)
  end

  test "should destroy admin_portrait" do
    assert_difference('Admin::Portrait.count', -1) do
      delete admin_portrait_url(@admin_portrait)
    end

    assert_redirected_to admin_portraits_url
  end
end
