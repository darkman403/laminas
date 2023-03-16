require "test_helper"

class DpersonalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dpersonals_index_url
    assert_response :success
  end

  test "should get show" do
    get dpersonals_show_url
    assert_response :success
  end

  test "should get new" do
    get dpersonals_new_url
    assert_response :success
  end

  test "should get edit" do
    get dpersonals_edit_url
    assert_response :success
  end
end
