require 'test_helper'

class Admin::BiographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_biography = admin_biographies(:one)
  end

  test "should get index" do
    get admin_biographies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_biography_url
    assert_response :success
  end

  test "should create admin_biography" do
    assert_difference('Admin::Biography.count') do
      post admin_biographies_url, params: { admin_biography: { message: @admin_biography.message, visible: @admin_biography.visible } }
    end

    assert_redirected_to admin_biography_url(Admin::Biography.last)
  end

  test "should show admin_biography" do
    get admin_biography_url(@admin_biography)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_biography_url(@admin_biography)
    assert_response :success
  end

  test "should update admin_biography" do
    patch admin_biography_url(@admin_biography), params: { admin_biography: { message: @admin_biography.message, visible: @admin_biography.visible } }
    assert_redirected_to admin_biography_url(@admin_biography)
  end

  test "should destroy admin_biography" do
    assert_difference('Admin::Biography.count', -1) do
      delete admin_biography_url(@admin_biography)
    end

    assert_redirected_to admin_biographies_url
  end
end
