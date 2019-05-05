require 'test_helper'

class Admin::EditorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_editorial = admin_editorials(:one)
  end

  test "should get index" do
    get admin_editorials_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_editorial_url
    assert_response :success
  end

  test "should create admin_editorial" do
    assert_difference('Admin::Editorial.count') do
      post admin_editorials_url, params: { admin_editorial: { description: @admin_editorial.description, name: @admin_editorial.name, order: @admin_editorial.order, show: @admin_editorial.show } }
    end

    assert_redirected_to admin_editorial_url(Admin::Editorial.last)
  end

  test "should show admin_editorial" do
    get admin_editorial_url(@admin_editorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_editorial_url(@admin_editorial)
    assert_response :success
  end

  test "should update admin_editorial" do
    patch admin_editorial_url(@admin_editorial), params: { admin_editorial: { description: @admin_editorial.description, name: @admin_editorial.name, order: @admin_editorial.order, show: @admin_editorial.show } }
    assert_redirected_to admin_editorial_url(@admin_editorial)
  end

  test "should destroy admin_editorial" do
    assert_difference('Admin::Editorial.count', -1) do
      delete admin_editorial_url(@admin_editorial)
    end

    assert_redirected_to admin_editorials_url
  end
end
