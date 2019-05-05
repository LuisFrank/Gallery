require 'test_helper'

class CyclorossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cycloross = cyclorosses(:one)
  end

  test "should get index" do
    get cyclorosses_url
    assert_response :success
  end

  test "should get new" do
    get new_cycloross_url
    assert_response :success
  end

  test "should create cycloross" do
    assert_difference('Cycloross.count') do
      post cyclorosses_url, params: { cycloross: {  } }
    end

    assert_redirected_to cycloross_url(Cycloross.last)
  end

  test "should show cycloross" do
    get cycloross_url(@cycloross)
    assert_response :success
  end

  test "should get edit" do
    get edit_cycloross_url(@cycloross)
    assert_response :success
  end

  test "should update cycloross" do
    patch cycloross_url(@cycloross), params: { cycloross: {  } }
    assert_redirected_to cycloross_url(@cycloross)
  end

  test "should destroy cycloross" do
    assert_difference('Cycloross.count', -1) do
      delete cycloross_url(@cycloross)
    end

    assert_redirected_to cyclorosses_url
  end
end
