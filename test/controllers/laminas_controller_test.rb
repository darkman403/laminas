require "test_helper"

class LaminasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laminas_index_url
    assert_response :success
  end

  test "should get show" do
    get laminas_show_url
    assert_response :success
  end

  test "should get new" do
    get laminas_new_url
    assert_response :success
  end

  test "should get edit" do
    get laminas_edit_url
    assert_response :success
  end
end
