require 'test_helper'

class DescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get descriptions_new_url
    assert_response :success
  end

  test "should get create" do
    get descriptions_create_url
    assert_response :success
  end

  test "should get update" do
    get descriptions_update_url
    assert_response :success
  end

  test "should get edit" do
    get descriptions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get descriptions_destroy_url
    assert_response :success
  end

  test "should get index" do
    get descriptions_index_url
    assert_response :success
  end

  test "should get show" do
    get descriptions_show_url
    assert_response :success
  end

end
