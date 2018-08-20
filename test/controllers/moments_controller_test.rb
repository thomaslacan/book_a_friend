require 'test_helper'

class MomentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moments_index_url
    assert_response :success
  end

  test "should get show" do
    get moments_show_url
    assert_response :success
  end

  test "should get new" do
    get moments_new_url
    assert_response :success
  end

  test "should get create" do
    get moments_create_url
    assert_response :success
  end

  test "should get edit" do
    get moments_edit_url
    assert_response :success
  end

  test "should get update" do
    get moments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get moments_destroy_url
    assert_response :success
  end

end
