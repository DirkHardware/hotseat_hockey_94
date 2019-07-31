require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get index" do
    get users_index_url
    assert_response :success
  end

=======
>>>>>>> testmaster
  test "should get new" do
    get users_new_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get create" do
    get users_create_url
=======
  test "should get edit" do
    get users_edit_url
>>>>>>> testmaster
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get destroy" do
    get users_destroy_url
=======
  test "should get index" do
    get users_index_url
>>>>>>> testmaster
    assert_response :success
  end

end
