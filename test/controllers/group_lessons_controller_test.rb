require 'test_helper'

class GroupLessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get group_lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get group_lessons_show_url
    assert_response :success
  end

  test "should get new" do
    get group_lessons_new_url
    assert_response :success
  end

  test "should get edit" do
    get group_lessons_edit_url
    assert_response :success
  end

end
