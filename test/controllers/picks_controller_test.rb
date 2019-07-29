require 'test_helper'

class PicksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get picks_new_url
    assert_response :success
  end

  test "should get show" do
    get picks_show_url
    assert_response :success
  end

  test "should get index" do
    get picks_index_url
    assert_response :success
  end

end
