require 'test_helper'

class ChukkersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chukkers_index_url
    assert_response :success
  end

  test "should get show" do
    get chukkers_show_url
    assert_response :success
  end

  test "should get new" do
    get chukkers_new_url
    assert_response :success
  end

  test "should get edit" do
    get chukkers_edit_url
    assert_response :success
  end

end
