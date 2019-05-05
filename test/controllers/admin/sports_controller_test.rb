require 'test_helper'

class Admin::SportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_sport = admin_sports(:one)
  end

  test "should get index" do
    get admin_sports_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_sport_url
    assert_response :success
  end

  test "should create admin_sport" do
    assert_difference('Admin::Sport.count') do
      post admin_sports_url, params: { admin_sport: { description: @admin_sport.description, name: @admin_sport.name, order: @admin_sport.order, show: @admin_sport.show } }
    end

    assert_redirected_to admin_sport_url(Admin::Sport.last)
  end

  test "should show admin_sport" do
    get admin_sport_url(@admin_sport)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_sport_url(@admin_sport)
    assert_response :success
  end

  test "should update admin_sport" do
    patch admin_sport_url(@admin_sport), params: { admin_sport: { description: @admin_sport.description, name: @admin_sport.name, order: @admin_sport.order, show: @admin_sport.show } }
    assert_redirected_to admin_sport_url(@admin_sport)
  end

  test "should destroy admin_sport" do
    assert_difference('Admin::Sport.count', -1) do
      delete admin_sport_url(@admin_sport)
    end

    assert_redirected_to admin_sports_url
  end
end
